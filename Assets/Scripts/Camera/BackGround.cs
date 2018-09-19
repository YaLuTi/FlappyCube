using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BackGround : MonoBehaviour {

    public float ScrollSpeed;
    public float tsZ;
    public GameObject ChildBackground;
    public Vector3 op;
    void Start()
    {
        op = transform.position;
    }

    // Update is called once per frame
    void Update()
    {
        float np = Mathf.Repeat(Time.time * ScrollSpeed, tsZ);
        transform.position = op + Vector3.down * np;
    }
}
