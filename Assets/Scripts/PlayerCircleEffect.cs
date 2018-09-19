using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class PlayerCircleEffect : MonoBehaviour {

    public float StartSize, MaxSize, MinSize;
    SpriteRenderer sprite;
	void Start () {
        sprite = GetComponent<SpriteRenderer>();	
	}
	
	// Update is called once per frame
	void Update () {
		
	}
    public void AtkStart()
    {
        transform.DOScale(new Vector3(StartSize, StartSize, 1), 0);
        transform.DOScale(new Vector3(MinSize, MinSize, 1), .1f);
        sprite.DOColor(new Color(1, 1, 1, 1), .1f);
    }
    public void AtkEnd()
    {
        transform.DOKill();
        transform.DOScale(new Vector3(MaxSize, MaxSize, 1), .25f);
        sprite.DOColor(new Color(1, 1, 1, 0.1f), .25f);
    }
}
