// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:4795,x:32867,y:32660,varname:node_4795,prsc:2|normal-2393-OUT,emission-2393-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:32235,y:32601,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:40b05bee1a9e84a4793f9a35fc9f2512,ntxv:2,isnm:False|UVIN-5395-OUT;n:type:ShaderForge.SFN_Multiply,id:2393,x:32497,y:32794,varname:node_2393,prsc:2|A-6074-RGB,B-2053-RGB,C-797-RGB,D-9248-OUT,E-5332-OUT;n:type:ShaderForge.SFN_VertexColor,id:2053,x:32235,y:32772,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_Color,id:797,x:32235,y:32930,ptovrint:True,ptlb:Color,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Vector1,id:9248,x:32235,y:33081,varname:node_9248,prsc:2,v1:2;n:type:ShaderForge.SFN_Time,id:2177,x:31445,y:32619,varname:node_2177,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:3808,x:31635,y:32825,ptovrint:False,ptlb:U Speed(Main),ptin:_USpeedMain,varname:node_3808,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_ValueProperty,id:339,x:31635,y:32906,ptovrint:False,ptlb:V Speed(Main),ptin:_VSpeedMain,varname:node_339,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_Append,id:2882,x:31852,y:32825,varname:node_2882,prsc:2|A-3808-OUT,B-339-OUT;n:type:ShaderForge.SFN_Multiply,id:350,x:31727,y:32578,varname:node_350,prsc:2|A-2177-T,B-2882-OUT;n:type:ShaderForge.SFN_Add,id:5395,x:31824,y:32376,varname:node_5395,prsc:2|A-3458-OUT,B-350-OUT;n:type:ShaderForge.SFN_Tex2d,id:2062,x:32076,y:33304,ptovrint:False,ptlb:node_2062,ptin:_node_2062,varname:node_2062,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b5c21b7d8c326494087b59917160ba59,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:5332,x:32466,y:33257,varname:node_5332,prsc:2|A-6074-A,B-2062-R;n:type:ShaderForge.SFN_Time,id:9460,x:30565,y:32537,varname:node_9460,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:1145,x:30681,y:32725,ptovrint:False,ptlb:U Speed(Noise),ptin:_USpeedNoise,varname:node_1145,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_ValueProperty,id:7681,x:30681,y:32829,ptovrint:False,ptlb:V Speed(Noise),ptin:_VSpeedNoise,varname:node_7681,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_Append,id:1177,x:30974,y:32684,varname:node_1177,prsc:2|A-1145-OUT,B-7681-OUT;n:type:ShaderForge.SFN_Multiply,id:6782,x:31021,y:32453,varname:node_6782,prsc:2|A-9460-T,B-1177-OUT;n:type:ShaderForge.SFN_TexCoord,id:5041,x:31055,y:32206,varname:node_5041,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:6741,x:31229,y:32286,varname:node_6741,prsc:2|A-5041-UVOUT,B-6782-OUT;n:type:ShaderForge.SFN_Lerp,id:3458,x:31658,y:32153,varname:node_3458,prsc:2|A-3481-UVOUT,B-5936-R,T-128-OUT;n:type:ShaderForge.SFN_Slider,id:128,x:31366,y:32464,ptovrint:False,ptlb:Noise Amount,ptin:_NoiseAmount,varname:node_128,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_TexCoord,id:3481,x:31228,y:31883,varname:node_3481,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:5936,x:31402,y:32187,ptovrint:False,ptlb:node_5936,ptin:_node_5936,varname:node_5936,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:77cf7aac42198c547b67a91bdc30b260,ntxv:0,isnm:False|UVIN-6741-OUT;proporder:6074-797-3808-339-2062-1145-7681-128-5936;pass:END;sub:END;*/

Shader "Shader Forge/shadertunnel" {
    Properties {
        _MainTex ("MainTex", 2D) = "black" {}
        _TintColor ("Color", Color) = (0.5,0.5,0.5,1)
        _USpeedMain ("U Speed(Main)", Float ) = 0.1
        _VSpeedMain ("V Speed(Main)", Float ) = 0.1
        _node_2062 ("node_2062", 2D) = "white" {}
        _USpeedNoise ("U Speed(Noise)", Float ) = 0.1
        _VSpeedNoise ("V Speed(Noise)", Float ) = 0.1
        _NoiseAmount ("Noise Amount", Range(0, 1)) = 0
        _node_5936 ("node_5936", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _TintColor;
            uniform float _USpeedMain;
            uniform float _VSpeedMain;
            uniform sampler2D _node_2062; uniform float4 _node_2062_ST;
            uniform float _USpeedNoise;
            uniform float _VSpeedNoise;
            uniform float _NoiseAmount;
            uniform sampler2D _node_5936; uniform float4 _node_5936_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 bitangentDir : TEXCOORD3;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float4 node_9460 = _Time;
                float2 node_6741 = (i.uv0+(node_9460.g*float2(_USpeedNoise,_VSpeedNoise)));
                float4 _node_5936_var = tex2D(_node_5936,TRANSFORM_TEX(node_6741, _node_5936));
                float4 node_2177 = _Time;
                float2 node_5395 = (lerp(i.uv0,float2(_node_5936_var.r,_node_5936_var.r),_NoiseAmount)+(node_2177.g*float2(_USpeedMain,_VSpeedMain)));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_5395, _MainTex));
                float4 _node_2062_var = tex2D(_node_2062,TRANSFORM_TEX(i.uv0, _node_2062));
                float3 node_2393 = (_MainTex_var.rgb*i.vertexColor.rgb*_TintColor.rgb*2.0*(_MainTex_var.a*_node_2062_var.r));
                float3 normalLocal = node_2393;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
////// Lighting:
////// Emissive:
                float3 emissive = node_2393;
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG_COLOR(i.fogCoord, finalRGBA, fixed4(0,0,0,1));
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
