__int64 __fastcall sub_D3278(__int64 a1, __int64 a2, __int64 a3)
{
  int v6; // w0
  _BYTE *v7; // x6
  unsigned __int8 *v8; // x8
  int v9; // w10
  int v10; // w9
  unsigned __int8 *v11; // x28
  bool v12; // zf
  int v13; // w9
  int v14; // w8
  __int64 v15; // x24
  __int64 v16; // x0
  __int64 v17; // x24
  _BYTE *v18; // x6
  unsigned __int8 *v19; // x8
  _BYTE *v20; // x6
  unsigned __int8 *v21; // x8
  bool v22; // zf
  int v23; // w8
  int v24; // w9
  __int64 v25; // x22
  __int64 v26; // x0
  __int64 v27; // x0
  __int64 v28; // x27
  __int64 v29; // x21
  __int64 v30; // x3
  __int64 v31; // x0
  __int64 v33; // [xsp+10h] [xbp-5A0h]
  __int64 v34; // [xsp+18h] [xbp-598h]
  __int64 v35; // [xsp+20h] [xbp-590h]
  __int64 v36; // [xsp+28h] [xbp-588h]
  __int64 v37; // [xsp+30h] [xbp-580h]
  __int64 v38; // [xsp+38h] [xbp-578h]
  __int64 v39; // [xsp+40h] [xbp-570h]
  __int64 v40; // [xsp+48h] [xbp-568h]
  __int64 v41; // [xsp+50h] [xbp-560h]
  __int64 v42; // [xsp+58h] [xbp-558h]
  __int64 v43; // [xsp+60h] [xbp-550h]
  __int64 v44; // [xsp+68h] [xbp-548h]
  __int64 v45; // [xsp+78h] [xbp-538h]
  __int64 v46; // [xsp+80h] [xbp-530h]
  __int64 v47; // [xsp+88h] [xbp-528h]
  int v48; // [xsp+94h] [xbp-51Ch]
  __int64 v49; // [xsp+98h] [xbp-518h]
  _BYTE *v50; // [xsp+A0h] [xbp-510h]
  _BYTE *v51; // [xsp+B8h] [xbp-4F8h]
  char *s; // [xsp+C0h] [xbp-4F0h]
  _BYTE *v53; // [xsp+D8h] [xbp-4D8h]
  __int64 v54; // [xsp+E0h] [xbp-4D0h]
  __int64 v55; // [xsp+E8h] [xbp-4C8h]
  __int64 v56; // [xsp+F0h] [xbp-4C0h]
  __int64 v57; // [xsp+F8h] [xbp-4B8h]
  __int64 v58; // [xsp+100h] [xbp-4B0h]
  _BYTE *v59; // [xsp+110h] [xbp-4A0h]
  __int64 v60; // [xsp+118h] [xbp-498h]
  __int64 v61; // [xsp+120h] [xbp-490h]
  __int64 v62; // [xsp+128h] [xbp-488h]
  __int64 v63; // [xsp+130h] [xbp-480h]
  __int64 v64; // [xsp+138h] [xbp-478h]
  unsigned __int8 *v65; // [xsp+140h] [xbp-470h]
  __int64 v66; // [xsp+148h] [xbp-468h]
  __int64 v67; // [xsp+150h] [xbp-460h]
  time_t timer; // [xsp+158h] [xbp-458h] BYREF
  _BYTE v69[68]; // [xsp+160h] [xbp-450h] BYREF
  _BYTE v70[512]; // [xsp+1A4h] [xbp-40Ch] BYREF
  _BYTE v71[128]; // [xsp+3A4h] [xbp-20Ch] BYREF
  _BYTE v72[92]; // [xsp+424h] [xbp-18Ch] BYREF
  _BYTE v73[128]; // [xsp+480h] [xbp-130h] BYREF
  _OWORD v74[6]; // [xsp+500h] [xbp-B0h] BYREF

  _ReadStatusReg(TPIDR_EL0);
  sub_D138(a1);
  v45 = sub_14D1C(a1, a2);
  v46 = sub_150EC(a1, v45, &byte_F7BB4);
  v47 = sub_150EC(a1, v45, &byte_F7BBC);
  v6 = sub_167AC(a1, v47);
  v9 = 1485504796;
  v48 = v6;
  while ( 1 )
  {
    while ( 1 )
    {
      while ( 1 )
      {
        while ( 1 )
        {
          v10 = v9;
          v11 = v8;
          if ( v9 > 233281376 )
            break;
          if ( v9 <= -688776948 )
          {
            if ( v9 > -1512989207 )
            {
              if ( v9 <= -1166608264 )
              {
                if ( v9 != -1512989206 )
                {
                  v12 = (unsigned int)sub_167AC(a1, v64) == 0;
                  v13 = -463693786;
                  v38 = v64;
                  v14 = 1933815510;
                  goto LABEL_2;
                }
                v57 = sub_C544(a1);
                v22 = (unsigned int)sub_167AC(a1, v57) == 0;
                v24 = 1081829652;
                v43 = v57;
                v23 = 1334665758;
                goto LABEL_94;
              }
              if ( v9 == -1166608263 )
              {
                sub_13D7C(a1, a3, &byte_F7C14, v66);
LABEL_77:
                v8 = v11;
                v9 = 687204086;
              }
              else
              {
                if ( v9 == -952557721 )
                  goto LABEL_66;
                sub_6630(s, v50, v7, v8);
                sub_6630(s, &byte_F7BE8, v18, v19);
                sub_6630(s, v51, v20, v21);
LABEL_51:
                v8 = v11;
                v9 = -1599135315;
              }
            }
            else if ( v9 <= -1709293262 )
            {
              if ( v9 == -2125135782 )
              {
                v12 = (*(unsigned int (__fastcall **)(__int64, __int64))(*(_QWORD *)a1 + 1344LL))(a1, v55) == 15;
                v14 = -521541021;
                goto LABEL_92;
              }
              v22 = (*(unsigned int (__fastcall **)(__int64, __int64))(*(_QWORD *)a1 + 1344LL))(a1, v54) == 15;
              v23 = -1709293261;
              v24 = -1210847147;
LABEL_94:
              if ( v22 )
                v9 = v24;
              else
                v9 = v23;
              v8 = v11;
            }
            else
            {
              if ( v9 == -1709293261 )
              {
                v55 = sub_D4754(a1, a2);
                v24 = -952557721;
                v22 = v55 == 0;
                v23 = 236990978;
                goto LABEL_94;
              }
              if ( v9 == -1702539878 )
              {
                v27 = (*(__int64 (__fastcall **)(__int64, _BYTE *))(*(_QWORD *)a1 + 1336LL))(a1, v53);
                v41 = sub_D4250(a1, a2, v27, &byte_F7BFC);
                v8 = v11;
                v9 = 566828970;
              }
              else
              {
                v17 = (*(__int64 (__fastcall **)(__int64, char *))(*(_QWORD *)a1 + 1336LL))(a1, s);
                v42 = sub_D4250(a1, a2, v17, &byte_F7BEC);
                (*(void (__fastcall **)(__int64, __int64))(*(_QWORD *)a1 + 184LL))(a1, v17);
                (*(void (__fastcall **)(__int64, __int64, _BYTE *))(*(_QWORD *)a1 + 1360LL))(a1, v49, v50);
                v8 = v11;
                v9 = 190080399;
              }
            }
          }
          else if ( v9 <= -327740879 )
          {
            if ( v9 <= -490169079 )
            {
              if ( v9 != -688776947 )
              {
                v44 = sub_D4250(a1, a2, v55, &byte_F7C00);
                sub_13D7C(a1, a3, &byte_F7C04, v55);
                goto LABEL_67;
              }
              v65 = v8;
              v40 = sub_D490C(a1, a2);
              v12 = (unsigned int)sub_167AC(a1, v40) == 0;
              v14 = 359812199;
              v13 = 1005185843;
              goto LABEL_2;
            }
            if ( v9 == -490169078 )
            {
              v67 = v37;
              sub_13D7C(a1, a3, &byte_F7C24, v36);
              v25 = sub_150EC(a1, v45, &qword_F7C28);
              v58 = sub_150EC(a1, v45, &qword_F7C30);
              v39 = v25;
              v12 = (unsigned int)sub_167AC(a1, v25) == 0;
              v13 = 1038617289;
              v35 = v58;
              v14 = 1084651397;
              goto LABEL_2;
            }
            if ( v9 != -463693786 )
            {
              sub_13C74(a3, &byte_F7C14, "");
              goto LABEL_77;
            }
            v38 = sub_D4250(a1, a2, v54, &byte_F7C00);
            v8 = v11;
            v9 = 1933815510;
          }
          else if ( v9 > 141266326 )
          {
            if ( v9 == 141266327 )
            {
              v62 = v34;
              sub_204F4(a1, a2);
              v49 = sub_150EC(a1, v45, &byte_F7BC8);
              v12 = (unsigned int)sub_167AC(a1, v46) == 0;
              v13 = 1642989882;
              v42 = v46;
              v14 = 190080399;
            }
            else
            {
              if ( v9 != 190080399 )
              {
                sprintf(s, &byte_F7BE4, v50);
                goto LABEL_51;
              }
              v63 = v42;
              sub_13D7C(a1, a3, &byte_F7BF0, v49);
              v26 = sub_43EB0(a1, &xmmword_F7BD0);
              sub_13D7C(a1, a3, &byte_F7BF4, v26);
              memset(v71, 0, sizeof(v71));
              memset(v70, 0, sizeof(v70));
              v53 = v71;
              sub_CDED8(a1, a2, v70, v71);
              sub_13C74(a3, &byte_F7BF8, v71);
              v12 = (unsigned int)sub_167AC(a1, v42) == 0;
              v13 = 891974640;
              v41 = v42;
              v14 = 566828970;
            }
LABEL_2:
            if ( v12 )
              v9 = v14;
            else
              v9 = v13;
            v8 = v11;
          }
          else if ( v9 == -327740878 )
          {
LABEL_66:
            sub_13C74(a3, &byte_F7C04, "");
            v44 = v64;
LABEL_67:
            v8 = v11;
            v9 = 420328740;
          }
          else
          {
            if ( v9 != -50015370 )
            {
              v12 = (unsigned int)sub_167AC(a1, v56) == 0;
              v13 = -1512989206;
              v43 = v56;
              v14 = 1334665758;
              goto LABEL_2;
            }
            sub_13D7C(a1, a3, a0Y, v61);
LABEL_82:
            v8 = v11;
            v9 = 571198839;
          }
        }
        if ( v9 <= 1005185842 )
          break;
        if ( v9 > 1334665757 )
        {
          if ( v9 <= 1642989881 )
          {
            if ( v9 != 1334665758 )
            {
              v12 = v48 == 0;
              v34 = v47;
              v14 = 141266327;
              v13 = 1875766796;
              goto LABEL_2;
            }
            v36 = v43;
            v37 = sub_D4250(a1, a2, v43, &byte_F7C20);
            v8 = v11;
            v9 = -490169078;
          }
          else
          {
            if ( v9 == 1642989882 )
            {
              v22 = (unsigned int)sub_167AC(a1, v49) == 0;
              v24 = 939811336;
              v42 = v46;
              v23 = 190080399;
              goto LABEL_94;
            }
            if ( v9 == 1875766796 )
            {
              memset(v74, 0, 64);
              time(&timer);
              sprintf((char *)v74, &byte_F7BC4, timer);
              v34 = (*(__int64 (__fastcall **)(__int64, _OWORD *))(*(_QWORD *)a1 + 1336LL))(a1, v74);
              sub_154B8(a1, v45, &byte_F7BBC, v74);
              v8 = v11;
              v9 = 141266327;
            }
            else
            {
              sub_13D7C(a1, a3, &byte_F7C04, v54);
              v8 = (unsigned __int8 *)v38;
              v9 = -688776947;
            }
          }
        }
        else if ( v9 <= 1080276165 )
        {
          if ( v9 != 1005185843 )
          {
            v59 = v69;
            memset(v69, 0, 65);
            v60 = sub_D4EF8(a1, v67, v62, v69);
            v22 = (unsigned int)sub_167AC(a1, v60) == 0;
            v24 = 233281377;
            v33 = v58;
            v23 = 870407558;
            goto LABEL_94;
          }
          v40 = sub_D7BC(a1, a2, &qword_F7C08);
          v8 = v11;
          v9 = 359812199;
        }
        else
        {
          if ( v9 == 1080276166 )
          {
            sub_13C74(a3, a0Y, "");
            goto LABEL_82;
          }
          if ( v9 != 1081829652 )
          {
            sub_13D7C(a1, a3, &byte_F7C38, v39);
            sub_13D7C(a1, a3, &byte_F7C3C, v35);
            v15 = sub_150EC(a1, v45, &qword_F7C48);
            sub_13D7C(a1, a3, &byte_F7C54, v67);
            sub_13D7C(a1, a3, &byte_F7C58, v15);
            sub_13C74(a3, &byte_F7C60, &byte_F7C64);
            sub_13D7C(a1, a3, &byte_F7C6C, v62);
            sub_13C74(a3, &byte_F7C70, aGeeid);
            v16 = sub_D52B0(a1, a2);
            sub_13D7C(a1, a3, aTzr, v16);
            v61 = sub_150EC(a1, v45, &qword_F7C88);
            v12 = (unsigned int)sub_167AC(a1, v61) == 0;
            v14 = -50015370;
            v13 = 1080276166;
            goto LABEL_2;
          }
          sub_15E4C(a1, v45, &byte_F7C18, v57);
          v9 = 1334665758;
          v43 = v57;
          v8 = v11;
        }
      }
      if ( v9 > 571198838 )
        break;
      if ( v9 <= 359812198 )
      {
        if ( v9 != 233281377 )
        {
          v12 = (unsigned int)sub_167AC(a1, v64) == 0;
          v14 = -2125135782;
LABEL_92:
          v13 = -327740878;
          goto LABEL_2;
        }
        v28 = a2;
        v29 = (*(__int64 (__fastcall **)(__int64, _BYTE *))(*(_QWORD *)a1 + 1336LL))(a1, v59 + 48);
        sub_15E4C(a1, v45, &qword_F7C28, v60);
        v33 = v29;
        v30 = v29;
        a2 = v28;
        sub_15E4C(a1, v45, &qword_F7C30, v30);
        v8 = v11;
        v9 = 870407558;
      }
      else
      {
        if ( v9 == 359812199 )
        {
          v66 = v40;
          v12 = (unsigned int)sub_167AC(a1, v40) == 0;
          v14 = -1166608263;
          v13 = -384936687;
          goto LABEL_2;
        }
        v8 = (unsigned __int8 *)v44;
        v9 = -688776947;
        if ( v10 != 420328740 )
        {
          v64 = v41;
          v54 = sub_D4488(a1, a2);
          v22 = (unsigned int)sub_167AC(a1, v54) == 0;
          v23 = -1709293261;
          v24 = -2029118522;
          goto LABEL_94;
        }
      }
    }
    if ( v9 <= 870407557 )
      break;
    if ( v9 == 870407558 )
    {
      v9 = 1084651397;
      v39 = v60;
      v35 = v33;
    }
    else if ( v9 == 891974640 )
    {
      v41 = v63;
      if ( (int)sub_5914(v53) <= 30 )
        v9 = 566828970;
      else
        v9 = -1702539878;
      v8 = v11;
    }
    else
    {
      v50 = (_BYTE *)(*(__int64 (__fastcall **)(__int64, __int64, _QWORD))(*(_QWORD *)a1 + 1352LL))(a1, v49, 0);
      memset(v73, 0, sizeof(v73));
      v51 = v72;
      memset(v72, 0, sizeof(v72));
      s = v73;
      if ( (int)__system_property_get(&xmmword_F7BD0, v72) >= 1 )
        v9 = -914535844;
      else
        v9 = 213691635;
      v8 = v11;
    }
  }
  if ( v9 != 571198839 )
  {
    v56 = sub_150EC(a1, v45, &byte_F7C18);
    v12 = (unsigned int)sub_167AC(a1, v65) == 0;
    v13 = 70284435;
    v36 = v56;
    v37 = (__int64)v65;
    v14 = -490169078;
    goto LABEL_2;
  }
  (*(void (__fastcall **)(__int64, __int64))(*(_QWORD *)a1 + 184LL))(a1, v45);
  sub_D5554(a3);
  v31 = sub_43EB0(a1, &xmmword_F7CA0);
  return sub_13D7C(a1, a3, aTofAjvD, v31);
}
