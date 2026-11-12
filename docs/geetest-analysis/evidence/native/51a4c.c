__int64 __fastcall sub_51A4C(__int64 a1, __int64 a2, __int64 a3)
{
  long double v3; // q8
  __int64 v6; // x0
  int v7; // w9
  __int64 v8; // x10
  __int64 v9; // x11
  __int64 v10; // x12
  __int64 v11; // x13
  _QWORD *v12; // x8
  int v13; // w14
  int i; // w15
  int v15; // w14
  __int64 v16; // x28
  __int64 v17; // x25
  __int64 v18; // x19
  __int64 v19; // x27
  int v20; // w20
  int v21; // w22
  int v22; // w9
  bool v23; // zf
  int v24; // w8
  __int64 v25; // x24
  __int64 v26; // x26
  __int64 v27; // x2
  __int64 v28; // x24
  __int64 v29; // x26
  __int64 v30; // x2
  long double v31; // q0
  long double v32; // q0
  int v33; // w8
  __int64 v34; // x19
  int v36; // [xsp+4h] [xbp-1CCh]
  unsigned __int8 v38; // [xsp+20h] [xbp-1B0h]
  int v39; // [xsp+24h] [xbp-1ACh]
  __int64 v40; // [xsp+28h] [xbp-1A8h]
  __int64 v41; // [xsp+30h] [xbp-1A0h]
  __int64 v42; // [xsp+38h] [xbp-198h]
  __int64 v43; // [xsp+40h] [xbp-190h]
  __int64 v44; // [xsp+48h] [xbp-188h]
  int v45; // [xsp+50h] [xbp-180h]
  int v46; // [xsp+54h] [xbp-17Ch]
  __int64 v47; // [xsp+58h] [xbp-178h]
  __int64 v48; // [xsp+60h] [xbp-170h]
  __int64 v49; // [xsp+68h] [xbp-168h]
  __int64 v50; // [xsp+78h] [xbp-158h]
  __int64 v51; // [xsp+80h] [xbp-150h]
  __int64 v52; // [xsp+88h] [xbp-148h]
  unsigned __int8 v53; // [xsp+94h] [xbp-13Ch]
  __int64 v54; // [xsp+98h] [xbp-138h]
  int v55; // [xsp+A4h] [xbp-12Ch]
  __int64 v56; // [xsp+A8h] [xbp-128h]
  __int64 v57; // [xsp+B0h] [xbp-120h]
  __int64 v58; // [xsp+B8h] [xbp-118h]
  __int64 v59; // [xsp+C0h] [xbp-110h]
  __int64 v60; // [xsp+C8h] [xbp-108h]
  __int64 v61; // [xsp+D0h] [xbp-100h]
  __int64 v62; // [xsp+D8h] [xbp-F8h]
  __int64 v63; // [xsp+E0h] [xbp-F0h]
  __int64 v64; // [xsp+E8h] [xbp-E8h]
  __int64 v65; // [xsp+F0h] [xbp-E0h]
  unsigned __int8 v66; // [xsp+F8h] [xbp-D8h]
  int v67; // [xsp+FCh] [xbp-D4h]
  __int64 v68; // [xsp+100h] [xbp-D0h]
  __int64 v69; // [xsp+108h] [xbp-C8h]
  __int64 v70; // [xsp+110h] [xbp-C0h]
  unsigned int v71; // [xsp+11Ch] [xbp-B4h]
  __int64 v72; // [xsp+120h] [xbp-B0h]
  __int64 v73; // [xsp+128h] [xbp-A8h]
  __int64 v74; // [xsp+130h] [xbp-A0h]
  __int64 v75; // [xsp+138h] [xbp-98h]
  __int64 v76; // [xsp+140h] [xbp-90h] BYREF
  __int64 v77; // [xsp+148h] [xbp-88h]
  _QWORD v78[4]; // [xsp+150h] [xbp-80h] BYREF

  v78[2] = *(_QWORD *)(_ReadStatusReg(TPIDR_EL0) + 40);
  v6 = clock_gettime(1, (struct timespec *)&v76);
  v12 = v78;
  *(_QWORD *)&v3 = 1.0;
  if ( a3 )
    v13 = -660500422;
  else
    v13 = 202952025;
  v36 = v13;
  for ( i = -725149798; ; i = 1518481946 )
  {
    while ( 1 )
    {
      while ( 1 )
      {
        while ( 1 )
        {
          v15 = i;
          v16 = v11;
          v17 = v10;
          v18 = v9;
          v19 = v8;
          v20 = v7;
          v21 = (int)v12;
          if ( i > 202952024 )
            break;
          if ( i <= -954773635 )
          {
            if ( i <= -1437095839 )
            {
              if ( i > -1560669846 )
              {
                if ( i != -1560669845 )
                {
                  v6 = sub_B6D0(a1);
                  goto LABEL_83;
                }
                v6 = sub_B6D0(a1);
                v41 = 0;
LABEL_91:
                LODWORD(v12) = v21;
                v7 = v20;
                v8 = v19;
                v9 = v18;
                v10 = v17;
                v11 = v16;
                i = -1216603628;
              }
              else
              {
                if ( i == -1689016069 )
                {
                  v70 = v42;
                  v6 = (*(__int64 (__fastcall **)(__int64, __int64, __int64 *, __int128 *))(*(_QWORD *)a1 + 264LL))(
                         a1,
                         v50,
                         &qword_F70A8,
                         &xmmword_F7050);
                  v62 = v6;
                  v22 = -954773634;
                  v23 = v6 == 0;
                  v24 = 1292312649;
                  goto LABEL_99;
                }
                v61 = sub_BF48(a1, a3, v60);
                v6 = (*(__int64 (__fastcall **)(__int64))(*(_QWORD *)a1 + 1824LL))(a1);
                v42 = v61;
                if ( (_BYTE)v6 )
                  i = 1563291767;
                else
                  i = -1689016069;
LABEL_5:
                LODWORD(v12) = v21;
                v7 = v20;
                v8 = v19;
                v9 = v18;
                v10 = v17;
                v11 = v16;
              }
            }
            else if ( i <= -1216603629 )
            {
              if ( i == -1437095838 )
              {
                v49 = v70;
                v48 = v69;
                i = 2082569122;
                v47 = v68;
                v45 = v67;
                v46 = v66;
                v44 = v43;
              }
              else
              {
                v25 = a3;
                v26 = sub_BB824(v6);
                sub_D0E0C(a1, a2, v26, v71);
                v27 = v26;
                a3 = v25;
                v6 = sub_13984(v65, &byte_F70B4, v27);
                LODWORD(v12) = v21;
                v7 = v20;
                v8 = v19;
                v9 = v18;
                v10 = v17;
                v11 = v16;
                i = 1292322392;
              }
            }
            else
            {
              if ( i == -1216603628 )
              {
                v69 = v41;
                v6 = (*(__int64 (__fastcall **)(__int64, __int64, __int64 *, __int128 *))(*(_QWORD *)a1 + 264LL))(
                       a1,
                       v50,
                       &qword_F7098,
                       &xmmword_F7080);
                v60 = v6;
                v22 = -1196102324;
                v23 = v6 == 0;
                v24 = -1572869710;
                goto LABEL_99;
              }
              if ( i != -1196102324 )
              {
                v59 = sub_BF48(a1, a3, v58);
                v6 = (*(__int64 (__fastcall **)(__int64))(*(_QWORD *)a1 + 1824LL))(a1);
                v41 = v59;
                if ( (_BYTE)v6 )
                  i = 2112944974;
                else
                  i = -1216603628;
                goto LABEL_5;
              }
              v6 = sub_B6D0(a1);
              v42 = 0;
LABEL_94:
              LODWORD(v12) = v21;
              v7 = v20;
              v8 = v19;
              v9 = v18;
              v10 = v17;
              v11 = v16;
              i = -1689016069;
            }
          }
          else if ( i > -559047314 )
          {
            if ( i <= -438485563 )
            {
              if ( i == -559047313 )
              {
                v6 = (*(__int64 (__fastcall **)(__int64, __int64, __int64 *, char *))(*(_QWORD *)a1 + 264LL))(
                       a1,
                       v50,
                       &qword_F7010,
                       &byte_F701C);
                v51 = v6;
                if ( v6 )
                  i = 537592337;
                else
                  i = -1461571564;
                goto LABEL_5;
              }
              v6 = sub_11A00(a1, v74, v64);
              LODWORD(v12) = v21;
              v7 = v20;
              v8 = v19;
              v9 = v18;
              v10 = v17;
              v11 = v16;
              i = 968797257;
            }
            else
            {
              if ( i == -438485562 )
              {
                v6 = (*(__int64 (__fastcall **)(__int64, __int64, __int64 *, char *))(*(_QWORD *)a1 + 264LL))(
                       a1,
                       v50,
                       &qword_F7020,
                       &byte_F701C);
                v52 = v6;
                v22 = 234945656;
                v23 = v6 == 0;
                v24 = 48527879;
LABEL_99:
                if ( v23 )
                  i = v22;
                else
                  i = v24;
                goto LABEL_5;
              }
              if ( i != 40321783 )
              {
                v53 = sub_11964(a1, a3, v52);
                v6 = (*(__int64 (__fastcall **)(__int64))(*(_QWORD *)a1 + 1824LL))(a1);
                v38 = v53;
                if ( (_BYTE)v6 )
                  i = 1408749622;
                else
                  i = 1518481946;
                goto LABEL_5;
              }
              (*(void (__fastcall **)(__int64))(*(_QWORD *)a1 + 128LL))(a1);
              v6 = (*(__int64 (__fastcall **)(__int64))(*(_QWORD *)a1 + 136LL))(a1);
              v33 = v55;
LABEL_106:
              v39 = v33;
              LODWORD(v12) = v21;
              v7 = v20;
              v8 = v19;
              v9 = v18;
              v10 = v17;
              v11 = v16;
              i = 956324277;
            }
          }
          else if ( i <= -839095353 )
          {
            if ( i == -954773634 )
            {
              v6 = sub_B6D0(a1);
              v43 = 0;
            }
            else
            {
              (*(void (__fastcall **)(__int64))(*(_QWORD *)a1 + 128LL))(a1);
              v6 = (*(__int64 (__fastcall **)(__int64))(*(_QWORD *)a1 + 136LL))(a1);
              v43 = v63;
            }
            LODWORD(v12) = v21;
            v7 = v20;
            v8 = v19;
            v9 = v18;
            v10 = v17;
            v11 = v16;
            i = -1437095838;
          }
          else
          {
            if ( i == -839095352 )
            {
              v57 = sub_BF48(a1, a3, v56);
              v6 = (*(__int64 (__fastcall **)(__int64))(*(_QWORD *)a1 + 1824LL))(a1);
              v40 = v57;
              if ( (_BYTE)v6 )
                i = 462186023;
              else
                i = 1584610912;
              goto LABEL_5;
            }
            if ( i != -725149798 )
            {
              v6 = (*(__int64 (__fastcall **)(__int64, __int64))(*(_QWORD *)a1 + 248LL))(a1, a3);
              v50 = v6;
              v22 = 446636233;
              v23 = v6 == 0;
              v24 = -559047313;
              goto LABEL_99;
            }
            i = v36;
            LODWORD(v12) = 0;
            v8 = 0;
            v9 = 0;
            v10 = 0;
            v11 = 0;
            v7 = 1;
          }
        }
        if ( i > 968797256 )
          break;
        if ( i <= 450188764 )
        {
          if ( i <= 397897506 )
          {
            if ( i != 202952025 )
            {
              v6 = sub_B6D0(a1);
              v38 = 0;
              goto LABEL_75;
            }
            v71 = v7;
            v72 = v8;
            v73 = v9;
            v74 = v10;
            v75 = v11;
            v64 = sub_BB824(v6);
            v6 = sub_BB824(v64);
            v65 = v6;
            if ( (_BYTE)v21 )
              i = -1428231972;
            else
              i = 1292322392;
            goto LABEL_5;
          }
          if ( i == 397897507 )
          {
            (*(void (__fastcall **)(__int64))(*(_QWORD *)a1 + 128LL))(a1);
            v6 = (*(__int64 (__fastcall **)(__int64))(*(_QWORD *)a1 + 136LL))(a1);
LABEL_83:
            LODWORD(v12) = v21;
            v7 = v20;
            v8 = v19;
            v9 = v18;
            v10 = v17;
            v11 = v16;
            i = -438485562;
          }
          else
          {
            v6 = sub_B6D0(a1);
            v47 = 0;
            v48 = 0;
            v49 = 0;
            v44 = 0;
            v45 = 1;
            v46 = 0;
            LODWORD(v12) = v21;
            v7 = v20;
            v8 = v19;
            v9 = v18;
            v10 = v17;
            v11 = v16;
            i = 2082569122;
          }
        }
        else
        {
          if ( i > 537592336 )
          {
            if ( i == 537592337 )
            {
              sub_11964(a1, a3, v51);
              v6 = (*(__int64 (__fastcall **)(__int64))(*(_QWORD *)a1 + 1824LL))(a1);
              if ( (_BYTE)v6 )
                i = 397897507;
              else
                i = -438485562;
              goto LABEL_5;
            }
            if ( i != 644194592 )
            {
              v67 = v39;
              v6 = (*(__int64 (__fastcall **)(__int64, __int64, __int64 *, __int128 *))(*(_QWORD *)a1 + 264LL))(
                     a1,
                     v50,
                     &qword_F7040,
                     &xmmword_F7050);
              v56 = v6;
              v22 = 450188765;
              v23 = v6 == 0;
              v24 = -839095352;
              goto LABEL_99;
            }
            v6 = sub_B6D0(a1);
            v33 = 1;
            goto LABEL_106;
          }
          if ( i == 450188765 )
          {
            v6 = sub_B6D0(a1);
            v40 = 0;
          }
          else
          {
            (*(void (__fastcall **)(__int64))(*(_QWORD *)a1 + 128LL))(a1);
            v6 = (*(__int64 (__fastcall **)(__int64))(*(_QWORD *)a1 + 136LL))(a1);
            v40 = v57;
          }
          LODWORD(v12) = v21;
          v7 = v20;
          v8 = v19;
          v9 = v18;
          v10 = v17;
          v11 = v16;
          i = 1584610912;
        }
      }
      if ( i <= 1563291766 )
        break;
      if ( i <= 2082569121 )
      {
        if ( i != 1563291767 )
        {
          v68 = v40;
          v6 = (*(__int64 (__fastcall **)(__int64, __int64, __int64 *, __int128 *))(*(_QWORD *)a1 + 264LL))(
                 a1,
                 v50,
                 &qword_F7068,
                 &xmmword_F7080);
          v58 = v6;
          if ( v6 )
            i = -1184259550;
          else
            i = -1560669845;
          goto LABEL_5;
        }
        (*(void (__fastcall **)(__int64))(*(_QWORD *)a1 + 128LL))(a1);
        v6 = (*(__int64 (__fastcall **)(__int64))(*(_QWORD *)a1 + 136LL))(a1);
        v42 = v61;
        goto LABEL_94;
      }
      v7 = v45;
      LODWORD(v12) = v46;
      v8 = v47;
      v9 = v48;
      v10 = v49;
      v11 = v44;
      i = 202952025;
      if ( v15 != 2082569122 )
      {
        if ( v15 != 2102491087 )
        {
          (*(void (__fastcall **)(__int64))(*(_QWORD *)a1 + 128LL))(a1);
          v6 = (*(__int64 (__fastcall **)(__int64))(*(_QWORD *)a1 + 136LL))(a1);
          v41 = v59;
          goto LABEL_91;
        }
        v55 = sub_C4A8(a1, a3, v54);
        v6 = (*(__int64 (__fastcall **)(__int64))(*(_QWORD *)a1 + 1824LL))(a1);
        v39 = v55;
        if ( (_BYTE)v6 )
          i = 40321783;
        else
          i = 956324277;
        goto LABEL_5;
      }
    }
    if ( i <= 1292322391 )
      break;
    if ( i == 1292322392 )
    {
      v28 = a3;
      v29 = sub_BB824(v6);
      sub_42030(a1, a2, v29);
      sub_4249C(a1, a2, v29);
      v30 = v29;
      a3 = v28;
      sub_13984(v65, &byte_F70B8, v30);
      sub_D3224(a1, a2, v65, v71, v73);
      sub_13984(v64, &byte_F70C0, v65);
      sub_13DB0(a1, v64, &byte_F70C8, v72);
      sub_13C74(v64, &byte_F70D0, aKwowhy);
      sub_A578(a1, v64, v75);
      sub_13C74(v64, &byte_F70E0, &byte_F70E4);
      sub_13C74(v64, &byte_F70E8, &byte_F70EC);
      sub_13C74(v64, &byte_F70F0, &byte_F70F4);
      sub_BAB9C(v64, &byte_F70F8, v3);
      *(double *)&v31 = (double)sub_D138(a1);
      sub_BAB9C(v64, &byte_F7100, v31);
      clock_gettime(1, (struct timespec *)v78);
      *(double *)&v32 = (double)((v78[1] - v77) / 1000000 + 1000 * (v78[0] - v76));
      v6 = sub_BAB9C(v64, &byte_F7104, v32);
      if ( v74 )
        i = -458655239;
      else
        i = 968797257;
      goto LABEL_5;
    }
    if ( i != 1408749622 )
    {
      v66 = v38;
      v6 = (*(__int64 (__fastcall **)(__int64, __int64, __int64 *, char *))(*(_QWORD *)a1 + 264LL))(
             a1,
             v50,
             &qword_F7030,
             &byte_F703C);
      v54 = v6;
      if ( v6 )
        i = 2102491087;
      else
        i = 644194592;
      goto LABEL_5;
    }
    (*(void (__fastcall **)(__int64))(*(_QWORD *)a1 + 128LL))(a1);
    v6 = (*(__int64 (__fastcall **)(__int64))(*(_QWORD *)a1 + 136LL))(a1);
    v38 = v53;
LABEL_75:
    LODWORD(v12) = v21;
    v7 = v20;
    v8 = v19;
    v9 = v18;
    v10 = v17;
    v11 = v16;
  }
  if ( i != 968797257 )
  {
    v63 = sub_BF48(a1, a3, v62);
    v6 = (*(__int64 (__fastcall **)(__int64))(*(_QWORD *)a1 + 1824LL))(a1);
    v43 = v63;
    if ( (_BYTE)v6 )
      i = -930406308;
    else
      i = -1437095838;
    goto LABEL_5;
  }
  v34 = sub_B67F8(v64);
  sub_C0BCC(v64);
  return v34;
}
