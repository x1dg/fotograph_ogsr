#ifndef        HMODEL_H
#define HMODEL_H

#include "common.h"

uniform samplerCUBE         env_s0 ;                
uniform samplerCUBE         env_s1 ;

uniform half4                         env_color        ;        // color.w  = lerp factor
uniform half3x4                        m_v2w                ;

void        hmodel                 (out half3 hdiffuse, out half3 hspecular, half m, half h, half s, float3 point, half3 normal)
{
	///////////////////////////////////////////////////////////////////////////////////////
        // !hscale - Hemisphere lighting
	///////////////////////////////////////////////////////////////////////////////////////
	 half3         nw                         = mul                 (m_v2w,normal);    
        half         hscale                 = h;                                //. *        (.5h + .5h*nw.y);
				
	
	///////////////////////////////////////////////////////////////////////////////////////
	//	© The code below is copyright of Cameron Sneed. All rights reserved.
	//	
	///////////////////////////////////////////////////////////////////////////////////////
	
		half3 N		= normalize(normal);						 
	  	half3 V 	= normalize		(point);
		half3 L 	= -Ldynamic_dir;
		float3	Ha	= normalize(L+V);					

		float4  LV 	= float4((saturate(dot(nw,Ha))),(saturate(dot(V,Ha))),		
			    	  (saturate(dot(nw,V))),(saturate(dot(nw,L))));
	
		float	NH2	= pow(LV.x,2);
	const float	Pi	= 3.1415926535;
		half	m2	= m/2;
	

		float	Bd	= (m / m2 * NH2 * NH2) * (exp(-((m - NH2) / (m2 * NH2))));
		float	SS	= min(1, min((2 * LV.x * LV.w) / LV.y, (2 * LV.x * LV.z) / LV.y));
				  
		float	Si	= (((Bd*SS)) / ((Pi * LV.w * LV.z)));

		float	rets	= (1.75 * (hscale+(LV.w*2)) * saturate(LV.w * (1.25f * ((m * LV.w)))) * nw);
		half4	Diff    = tex3D (s_material,half3(hscale,rets,m2));
			
		float4  light = (Diff);

	///////////////////////////////////////////////////////////////////////////////////////
	//	© The code above is copyright of Cameron Sneed. Algorithms used are copyright
	//	of thier respective owners.
	///////////////////////////////////////////////////////////////////////////////////////
			

        //////////////////////////////////////////////////////////////////////////////////////
        // diffuse color - !Combined 4 texture lookups into only two for both diff and spec
	//////////////////////////////////////////////////////////////////////////////////////
      	half3         e0d               = texCUBE         (env_s0,nw);
        half3         e1d               = texCUBE         (env_s1,nw);
	

	half3         env_d             = env_color.xyz*((lerp(e0d, e1d, env_color.w)));


	
				 env_d*=env_d;
		
	//////////////////////////////////////////////////////////////////////////////////////
	// !New ambient occlusion
	//////////////////////////////////////////////////////////////////////////////////////


		
	




	
	//////////////////////////////////////////////////////////////////////////////////////
	// !Combine to get Diffuse and Specular color and intensity
	//////////////////////////////////////////////////////////////////////////////////////
				

        hdiffuse                        =  (env_d) * (light.xyz) + L_ambient.rgb;
        				  					
		                                                           
        hspecular                       =  Diff * light.w * s ;		// (env_d) * (light.w) * (s);                 
}
	//////////////////////////////////////////////////////////////////////////////////////
	//  !The code below is for Object dynamic and isn't used for our purposes
	//   but I have left it for compatibility. It is not compiled at run-time.
	//////////////////////////////////////////////////////////////////////////////////////


void         hmodel_table        (out half3 hdiffuse, out half3 hspecular, half m, half h, half s, half3 point, half3 normal)
{
        // hscale - something like diffuse reflection
        half         hscale         = h;

        // reflection vector
        half3         v2point        = normalize        (point);
        half3        vreflect= reflect         (v2point,normal);
        half         hspec         = .5h+.5h*dot        (vreflect,v2point);

        // material
          half4         light        = tex3D                (s_material, half3(hscale, hspec, m) );                // sample material

        // diffuse color
        half3         env_d         = texCUBE         (env_s0,normal);

        // specular color
        half3         env_s          = texCUBE         (env_s0,vreflect);

        //
        hdiffuse        = env_d       *light.xyz          + L_ambient.rgb        ;
        hspecular        = env_s        *light.w         * s                ;
}

#endif
