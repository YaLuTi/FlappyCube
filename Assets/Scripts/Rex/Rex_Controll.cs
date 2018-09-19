using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;


public class Rex_Controll : MonoBehaviour {


    public GameObject LeftHand, RightHand;
    public CameraControll cameraControll;
    int ground;
    float Punch_Speed = .1f;

    [Header("PunchAttack")]
    public Vector3 PunchVLeft;
    public Vector3 PunchVRight;
    public Vector3 LeftHand_P, RightHand_P;
    public ParticleSystem PunchParticleLeft, PunchParticleRight;
    public ParticleSystem DownAttackParticle;

    [Header("CircleAttack")]
    public Vector3 CircleLocation;
    public Vector3 LeftHand_C, RightHand_C;

	void Start () {
        ground = LayerMask.GetMask("Floor");
        LeftHand_P = LeftHand.transform.localPosition;
        RightHand_P = RightHand.transform.localPosition;
        StartCoroutine(Punch());
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    IEnumerator Punch()
    {
        bool way = deway();
        Punch_Speed = .25f;
        float moveSpeed = 4f;

        if (way)
        {
            transform.DOMove(PunchVRight, 1f);
        }
        else
        {
            transform.DOMove(PunchVLeft, 1f);
        }

        yield return new WaitForSecondsRealtime(1f);
        LeftHand.transform.DORotate(new Vector3(0, 0, -1440), 2f, RotateMode.WorldAxisAdd).SetEase(Ease.InCubic);
        RightHand.transform.DORotate(new Vector3(0, 0, 1440), 2f, RotateMode.WorldAxisAdd).SetEase(Ease.InCubic);
        yield return new WaitForSecondsRealtime(2f);

        if (way)
        {
            transform.DOMove(PunchVLeft, moveSpeed).SetEase(Ease.InSine);
        }
        else
        {
            transform.DOMove(PunchVRight, moveSpeed).SetEase(Ease.InSine);
        }

        while (Punch_Speed>-.75f)
        {
            Punch_Speed -= .025f;
            RaycastHit hit;
            if (Physics.Raycast(transform.position, -Vector3.up, out hit, 100, ground))
            {
                float ran = Random.Range(1f, -1f);
                hit.point += new Vector3(ran, 0, 0);
                RightHand.transform.DOLocalMove(RightHand_P + Random.insideUnitSphere * .5f, Punch_Speed);
                LeftHand.transform.DOMove(hit.point, Punch_Speed);
                LeftHand.transform.DORotate(new Vector3(0, 0, -14400), 1f, RotateMode.WorldAxisAdd);
                yield return new WaitForSecondsRealtime(Punch_Speed);
                PunchParticleLeft.Play();
            }
            if (Physics.Raycast(transform.position, -Vector3.up, out hit, 100, ground))
            {
                float ran = Random.Range(1f, -1f);
                hit.point += new Vector3(ran, 0, 0);
                LeftHand.transform.DOLocalMove(LeftHand_P + Random.insideUnitSphere * .5f, Punch_Speed);
                RightHand.transform.DOMove(hit.point, Punch_Speed);
                RightHand.transform.DORotate(new Vector3(0, 0, 14400), 1f, RotateMode.WorldAxisAdd);
                yield return new WaitForSecondsRealtime(Punch_Speed);
                PunchParticleRight.Play();
            }
            yield return 0;
        }
        transform.DOKill();
        RightHand.transform.DOLocalMove(RightHand_P, .25f);
        LeftHand.transform.DOLocalMove(LeftHand_P , .25f);

        transform.DOMoveY(transform.position.y + 1f, .7f).SetEase(Ease.InExpo);
        yield return new WaitForSecondsRealtime(.7f);
        LeftHand.transform.DOKill();
        RightHand.transform.DOKill();
        LeftHand.transform.eulerAngles = Vector3.zero;
        RightHand.transform.eulerAngles = Vector3.zero;
        transform.DOMoveY(-2.25f, .1f);
        yield return new WaitForSecondsRealtime(.1f);
        DownAttackParticle.Play();
        cameraControll.Shake(10f);

        yield return 0;
    }
    IEnumerator Circle()
    {
        yield return new WaitForSecondsRealtime(1f);
        transform.DOMove(CircleLocation, 1f);
        yield return new WaitForSecondsRealtime(1f);
        while (true)
        {

        }
        yield return 0;
    }

    bool deway()
    {
        return (Random.value > .5f);
    }
}
