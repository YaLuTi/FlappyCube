using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class Player_Move : MonoBehaviour {

    float h, a;
    public float gravity;
    Rigidbody rb;
    public float speed;
    public float jump;
    public float fly;
    public float downDist;
    public float Left_Limit, Right_Limit;
    float distToGround;
    public bool attack = false;
    bool IsGround;
    public ParticleSystem Jump_ps;
    public ParticleSystem Down_ps;
    public CameraControll camera;

    void Start () {
        rb = GetComponent<Rigidbody>();
        distToGround = this.GetComponent<Collider>().bounds.extents.y;
	}
	
	// Update is called once per frame
	void Update () {
        Move();
        Gravity();
        
		MobileInput(); 


        if (transform.localPosition.x < Left_Limit)
        {
            transform.DOPause();
            Vector3 move = transform.localPosition;
            move.x = Left_Limit;
            transform.localPosition = move;
        }
        if (transform.localPosition.x > Right_Limit)
        {
            transform.DOPause();
            Vector3 move = transform.localPosition;
            move.x = Right_Limit;
            transform.localPosition = move;
        }

        if (Input.GetKeyDown(KeyCode.UpArrow))
        {
            Jump();
        }
        if (Input.GetKey(KeyCode.UpArrow) && !IsGround)
        {
            Fly();
        }
        if (Input.GetKeyDown(KeyCode.DownArrow)&&!IsGround && attack == false)
        {
            Down();
        }
    }
    void Move()
    {
        h = Input.GetAxisRaw("Horizontal");
        Vector3 move = rb.velocity;
        move.x = h * speed;
        rb.velocity = move;
    }
    void Jump()
    {
        a = 0;
        Vector3 move = rb.velocity;
        //Stupid way to use ps. Just change ps [Simulation Space] to Custom and ps.play it.
        Destroy(Instantiate<ParticleSystem>(Jump_ps, transform.position, Quaternion.identity).gameObject, .25f);
        move.y = 0;
        rb.velocity = move;
        rb.AddForce(0, jump, 0);
        transform.DORotate(new Vector3(0, 0, -720), 1f, RotateMode.WorldAxisAdd);
    }
    void Fly()
    {
        rb.AddForce(0, fly, 0);
    }
    void Gravity()
    {
        RaycastHit hit;
        if (Physics.Raycast(transform.position, -Vector3.up, out hit, distToGround + .15f))
        {
            //rb.AddForce(0, a*2, 0);
            //a = 0;
            IsGround = true;
            float rotate = transform.eulerAngles.z;
            if (rotate % 90 != 0) // to make cube stand well.
            {
                int times;
                if (rotate < 0)
                {
                    rotate = 360 - rotate;
                }
                times = Mathf.FloorToInt(rotate / 90);
                if (rotate % 90 > 45)
                {
                    times++;
                }
                transform.rotation = Quaternion.Euler(transform.eulerAngles.x, transform.eulerAngles.y, times * 90);
            }
            //Do if you hit enemy
            if (attack)
            {
                attack = false;
                if(hit.transform.tag == "Enemy")
                {
                    Down_ps.Play();
                    camera.Shake(5f);
                    //Bad code. I want jump without ps but I'm lazy lol.
                    a = 0;
                    Vector3 move = rb.velocity;
                    move.y = 0;
                    rb.velocity = move;
                    rb.AddForce(0, jump, 0);
                    transform.DORotate(new Vector3(0, 0, -720), 1f, RotateMode.WorldAxisAdd);
                }
            }
        }
        else
        {
            a -= gravity;
            IsGround = false;
        }
        if (attack)//count distance
        {
            downDist += 1;
        }
        rb.AddForce(0, a, 0);
    }
    void Down()
    {
        downDist = 0;
        attack = true;
        float rotate = transform.eulerAngles.z;
        if (rotate % 90 != 0)
        {
            int times;
            if (rotate < 0)
            {
                rotate = 360 - rotate;
            }
            times = Mathf.FloorToInt(rotate / 90);
            if (rotate % 90 > 45)
            {
                times++;
            }
            transform.DOComplete();
            
            transform.DORotate(new Vector3(transform.eulerAngles.x, transform.eulerAngles.y, 0),.1f);
        }
        rb.AddForce(0, -200, 0);
    }

    private void OnCollisionEnter(Collision collision)
    {
        
    }

    private void MobileInput()
    {
        
    }
}
