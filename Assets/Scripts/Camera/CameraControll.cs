using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;
using UnityEngine.UI;

public class CameraControll : MonoBehaviour
{

    public float ShakeCountO = 0;
    public float ShakeCountN = 0;
    public float max;
    public float min = 0;
    public float now = 0;
    public Vector3 op;
    public Image SceneEffect;

    void Start()
    {
        op = transform.position;
    }
    
    void Update()
    {
        now = min + (max - min) * ShakeCountN / ShakeCountO;
        SceneEffect.DOColor(new Color(255, 255, 255, 0), .75f);

        transform.DOMove(op + Random.insideUnitSphere * now, 1);
        if (ShakeCountN > 0)
        {
            ShakeCountN--;
        }
        else
        {
            ShakeCountN = 0;
            //ShakeCountO = 1;
        }
    }

    public void Shake(float count)
    {
        if (count > ShakeCountO)
        {
            //ShakeCountO = count;
        }
        ShakeCountN += count;
    }

    public void White()
    {
        SceneEffect.DOColor(new Color(255, 255, 255, 1.5f), .1f);
    }
}
