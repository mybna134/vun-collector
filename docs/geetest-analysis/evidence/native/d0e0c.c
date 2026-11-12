__int64 __fastcall sub_D0E0C(__int64 a1, __int64 a2, __int64 a3)
{
  int v3; // w25
  long double v4; // q8
  __int64 v8; // x0
  __int64 v9; // x0
  __int64 v10; // x0
  __int64 v11; // x0
  __int64 v12; // x0
  __int64 v13; // x0
  __int64 v14; // x0
  __int64 v15; // x0
  unsigned int v16; // w0
  __int64 v17; // x0
  __int64 v18; // x0
  int v19; // w8
  __int64 v20; // x27
  __int64 v21; // x27
  __int64 v23; // x27
  int v24; // w0
  __int64 v25; // x27
  int v26; // w0
  __int64 v27; // x27
  int v28; // w0
  __int64 v29; // x27
  int v30; // w0
  __int64 v31; // x0
  __int64 v32; // x0
  int v33; // w0
  int v34; // w0
  __int64 v35; // x0
  int v36; // w0
  float v37; // s0
  __int64 v38; // x0
  __int64 v39; // x0
  unsigned __int64 v40; // x0
  __int64 v41; // x0
  unsigned __int64 v42; // x0
  int v43; // w0
  int v44; // w0
  int v45; // w0
  __int64 v46; // x3
  _QWORD *v48; // [xsp+8h] [xbp-78h]
  __int64 v49; // [xsp+10h] [xbp-70h]
  _QWORD *v50; // [xsp+18h] [xbp-68h]
  int v51; // [xsp+28h] [xbp-58h]
  int v52; // [xsp+2Ch] [xbp-54h]

  sub_D138(a1);
  v8 = sub_44068(a1, a2);
  sub_13D7C(a1, a3, &byte_F79D0, v8);
  v9 = sub_43720(a1, a2);
  sub_13D7C(a1, a3, &byte_F79D4, v9);
  v10 = sub_4398C(a1, a2);
  sub_13D7C(a1, a3, &byte_F79D8, v10);
  v11 = sub_43C18(a1, a2);
  sub_13D7C(a1, a3, &byte_F79DC, v11);
  v12 = sub_43EB0(a1, &xmmword_F79E0);
  sub_13D7C(a1, a3, &byte_F79F4, v12);
  v13 = sub_43EB0(a1, &xmmword_F7A00);
  sub_13D7C(a1, a3, &byte_F7A14, v13);
  v14 = sub_43EB0(a1, &xmmword_F7A20);
  sub_13D7C(a1, a3, &byte_F7A3C, v14);
  v15 = sub_44820(a1, a2);
  sub_13D7C(a1, a3, &byte_F7A40, v15);
  v16 = sub_44580(a1, a2);
  v17 = sub_12998(a1, v16);
  sub_13D7C(a1, a3, &byte_F7A44, v17);
  v18 = sub_44AC4(a1, a2);
  *(_QWORD *)&v4 = -1.0;
  v19 = 179908830;
  v48 = (_QWORD *)v18;
  while ( 1 )
  {
    while ( 1 )
    {
      while ( 1 )
      {
        while ( v19 <= 179908829 )
        {
          if ( v19 > -162386834 )
          {
            if ( v19 == -162386833 )
            {
              v31 = sub_45438(a1, &qword_F7AC0);
              sub_13D7C(a1, a3, &byte_F7ACC, v31);
              v32 = sub_45438(a1, &qword_F7AD0);
              sub_13D7C(a1, a3, &byte_F7ADC, v32);
              v33 = sub_458EC(a1, &qword_F7AE8, a2);
              sub_BAB9C(a3, &byte_F7AF4, (double)v33);
              v34 = sub_458EC(a1, &qword_F7AF8, a2);
              sub_BAB9C(a3, &byte_F7B08, (double)v34);
              v35 = sub_46778(a1);
              sub_BAB9C(a3, &byte_F7B0C, (double)v35);
              v36 = sub_EE00(a1, a2, &xmmword_F7B10);
              sub_BAB9C(a3, &byte_F7B24, (double)v36);
              v37 = sub_4693C(a1, a2, &qword_F7B28);
              sub_BAB9C(a3, &byte_F7B38, v37);
              if ( (unsigned int)sub_4733C(a1, a2, a3) == -1 )
                v19 = 34570170;
              else
                v19 = -144846260;
            }
            else if ( v19 == -144846260 )
            {
              sub_48A34(a1, a2);
              sub_BAB9C(a3, &byte_F7B44);
              v38 = sub_499EC(a1, a2);
              sub_13D7C(a1, a3, &byte_F7B48, v38);
              v39 = sub_1F6AC(a3);
              v40 = sub_4AE70(v39);
              v41 = sub_BAB9C(a3, aQvHzs, (double)v40);
              v42 = sub_4AF54(v41);
              sub_BAB9C(a3, &aQvHzs[4], (double)v42);
              sub_13C74(a3, &aQvHzs[8], &qword_F7B58);
              sub_DD31C(a1, a2, a3);
              v43 = sub_1FA30(a1, a2);
              sub_BAB9C(a3, &byte_F7B60, (double)v43);
              sub_49278(a1, a3);
              v44 = sub_4ABCC(a1, a2);
              sub_BAB9C(a3, &byte_F7B64, (double)v44);
              if ( (unsigned int)sub_48034(a1, a2, a3) == -1 )
                v19 = -1093242091;
              else
                v19 = 333425277;
            }
            else
            {
              sub_13C74(a3, &byte_F7B3C, "");
              sub_13C74(a3, &byte_F7B40, "");
              v19 = -144846260;
            }
          }
          else if ( v19 == -1093242091 )
          {
            sub_13C74(a3, &byte_F7B68, "");
            sub_13C74(a3, a88K, "");
            sub_BAB9C(a3, &byte_F7B78, v4);
            v19 = 333425277;
          }
          else if ( v19 == -738025566 )
          {
            v49 = (*(__int64 (__fastcall **)(__int64, _QWORD, __int64 *, __int128 *))(*(_QWORD *)a1 + 264LL))(
                    a1,
                    *v48,
                    &qword_F7A48,
                    &xmmword_F7A60);
            if ( v49 )
              v19 = 857434560;
            else
              v19 = 962583738;
          }
          else
          {
            sub_BAB9C(a3, &byte_F7A94, v4);
            sub_BAB9C(a3, &byte_F7A88, v4);
            sub_BAB9C(a3, &byte_F7AA0, v4);
            sub_BAB9C(a3, aM, -1.0);
            sub_BAB9C(a3, &byte_F7AB8, -1.0);
            v19 = -162386833;
          }
        }
        if ( v19 <= 962583737 )
          break;
        if ( v19 == 962583738 )
        {
          sub_B6D0(a1);
          sub_BAB9C(a3, &byte_F7A94, -1.0);
          sub_BAB9C(a3, &byte_F7A88, -1.0);
          sub_BAB9C(a3, &byte_F7AA0, -1.0);
          sub_BAB9C(a3, aM, -1.0);
          sub_BAB9C(a3, &byte_F7AB8, -1.0);
          v19 = 1437299334;
        }
        else if ( v19 == 1437299334 )
        {
          sub_10C30(a1, v48);
          v19 = -162386833;
        }
        else
        {
          sub_BAB9C(a3, &byte_F7A88, (double)v3);
          v23 = (*(__int64 (__fastcall **)(__int64, char *))(*(_QWORD *)a1 + 1336LL))(a1, &byte_F7A8C);
          v24 = sub_45430(a1, *v50, v49, v23);
          sub_BAB9C(a3, &byte_F7A94, (double)v24);
          (*(void (__fastcall **)(__int64, __int64))(*(_QWORD *)a1 + 184LL))(a1, v23);
          v25 = (*(__int64 (__fastcall **)(__int64, __int64 *))(*(_QWORD *)a1 + 1336LL))(a1, &qword_F7A98);
          v26 = sub_45430(a1, *v50, v49, v25);
          sub_BAB9C(a3, &byte_F7AA0, (double)v26);
          (*(void (__fastcall **)(__int64, __int64))(*(_QWORD *)a1 + 184LL))(a1, v25);
          v27 = (*(__int64 (__fastcall **)(__int64, char *))(*(_QWORD *)a1 + 1336LL))(a1, &byte_F7AA4);
          v28 = sub_45430(a1, *v50, v49, v27);
          sub_BAB9C(a3, aM, (double)v28);
          (*(void (__fastcall **)(__int64, __int64))(*(_QWORD *)a1 + 184LL))(a1, v27);
          v29 = (*(__int64 (__fastcall **)(__int64, char *))(*(_QWORD *)a1 + 1336LL))(a1, &aM[4]);
          v30 = sub_45430(a1, *v50, v49, v29);
          sub_BAB9C(a3, &byte_F7AB8, (double)v30);
          (*(void (__fastcall **)(__int64, __int64))(*(_QWORD *)a1 + 184LL))(a1, v29);
          v19 = 1437299334;
        }
      }
      if ( v19 <= 741296925 )
        break;
      if ( v19 == 741296926 )
      {
        v3 = 100 * v51 / v52;
        v19 = 1708346955;
      }
      else
      {
        v20 = (*(__int64 (__fastcall **)(__int64, char *))(*(_QWORD *)a1 + 1336LL))(a1, &byte_F7A78);
        v50 = v48 + 1;
        v51 = sub_45430(a1, v48[1], v49, v20);
        (*(void (__fastcall **)(__int64, __int64))(*(_QWORD *)a1 + 184LL))(a1, v20);
        v21 = (*(__int64 (__fastcall **)(__int64, char *))(*(_QWORD *)a1 + 1336LL))(a1, &byte_F7A80);
        v52 = sub_45430(a1, v48[1], v49, v21);
        (*(void (__fastcall **)(__int64, __int64))(*(_QWORD *)a1 + 184LL))(a1, v21);
        v3 = -1;
        if ( v52 == -1 || v51 == -1 )
          v19 = 1708346955;
        else
          v19 = 741296926;
      }
    }
    if ( v19 != 179908830 )
      break;
    if ( v48 )
      v19 = -738025566;
    else
      v19 = -494857450;
  }
  v45 = sub_4B03C(a1, a2);
  sub_BAB9C(a3, &byte_F7B80, (double)v45);
  v46 = sub_43EB0(a1, &xmmword_F7B90);
  return sub_13D7C(a1, a3, &byte_F7BAC, v46);
}
