Shader "SwimPool/Water"
{
    Properties
    {
        _Color ("Main Color", Color) = (1,1,1,1)
		_GlareColor ("Glare Color", Color) = (1,1,1,1)
		_Bias ("Bias Glare",Float) = 1
    }
    SubShader
    {
		Tags{ "Queue" = "Transparent" "IgnoreProjector" = "True" "RenderType" = "Transparent" }
        LOD 200
		Cull Off
		Zwrite Off
        Pass{
            CGPROGRAM

            #pragma target 3.0

            #pragma vertex vert

            #pragma fragment frag

            #include "UnityCG.cginc"

            float4 _Color;
            float4 _GlareColor;
            float _Bias;

            struct v2f{
                float4 vertex : POSITION;
            };

            v2f vert (appdata_tan v){
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                return o;
            }

            float4 frag ( v2f i) : COLOR {
                float4 color;
                return color;
            }
            
            ENDCG
            }
    }
    FallBack "Diffuse"
}
