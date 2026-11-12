__int64 __fastcall sub_210F4(__int64 a1)
{
  int v1; // w23
  unsigned __int8 *v2; // x2
  _BYTE *v3; // x3
  int v4; // w15
  int v5; // w24
  int v6; // w8
  int v7; // w28
  _BOOL4 v8; // w0
  __int128 v9; // q0
  __int64 v10; // x25
  __int128 v11; // q1
  __int128 v12; // q2
  size_t v13; // x0
  int v14; // w8
  int v15; // w8
  int v16; // w11
  int v17; // w9
  int v18; // w13
  int v19; // w11
  int v20; // w20
  int v21; // w9
  int v22; // w8
  int v23; // w4
  int v24; // w8
  int v25; // w23
  int v26; // w8
  int v27; // w4
  int v28; // w8
  int v29; // w9
  int v30; // w10
  int v31; // w23
  bool v32; // zf
  int v33; // w8
  __int64 v34; // x0
  size_t v35; // x8
  int v36; // w8
  unsigned int v37; // w0
  _BYTE *v38; // x6
  _BYTE *v39; // x6
  unsigned __int8 *v40; // x8
  _BYTE *v41; // x6
  unsigned __int8 *v42; // x8
  _BYTE *v43; // x3
  int v44; // w4
  int v45; // w8
  int v47; // [xsp+14h] [xbp-2ACh]
  int v48; // [xsp+18h] [xbp-2A8h]
  int v49; // [xsp+1Ch] [xbp-2A4h]
  __int128 v50; // [xsp+20h] [xbp-2A0h]
  __int128 v51; // [xsp+30h] [xbp-290h]
  __int128 v52; // [xsp+40h] [xbp-280h]
  unsigned int v54; // [xsp+64h] [xbp-25Ch]
  int v55; // [xsp+68h] [xbp-258h]
  int v56; // [xsp+6Ch] [xbp-254h]
  int v57; // [xsp+70h] [xbp-250h]
  int v58; // [xsp+74h] [xbp-24Ch]
  __int64 v59; // [xsp+78h] [xbp-248h]
  int v60; // [xsp+80h] [xbp-240h]
  int v61; // [xsp+84h] [xbp-23Ch]
  int v62; // [xsp+88h] [xbp-238h]
  char v63; // [xsp+8Ch] [xbp-234h]
  int v64; // [xsp+90h] [xbp-230h]
  int v65; // [xsp+94h] [xbp-22Ch]
  int v66; // [xsp+98h] [xbp-228h]
  int v67; // [xsp+9Ch] [xbp-224h]
  int v68; // [xsp+ACh] [xbp-214h]
  int v69; // [xsp+B0h] [xbp-210h]
  char v70; // [xsp+B4h] [xbp-20Ch]
  void **p_s; // [xsp+B8h] [xbp-208h]
  FILE *stream; // [xsp+C8h] [xbp-1F8h]
  const char **n; // [xsp+D0h] [xbp-1F0h]
  int v74; // [xsp+DCh] [xbp-1E4h]
  __int128 v75; // [xsp+E0h] [xbp-1E0h] BYREF
  __int128 v76; // [xsp+F0h] [xbp-1D0h]
  __int128 v77; // [xsp+100h] [xbp-1C0h]
  __int128 v78; // [xsp+110h] [xbp-1B0h]
  __int128 v79; // [xsp+120h] [xbp-1A0h]
  __int128 v80; // [xsp+130h] [xbp-190h]
  __int128 v81; // [xsp+140h] [xbp-180h]
  __int128 v82; // [xsp+150h] [xbp-170h]
  __int128 v83; // [xsp+160h] [xbp-160h]
  __int128 v84; // [xsp+170h] [xbp-150h]
  __int128 v85; // [xsp+180h] [xbp-140h]
  __int128 v86; // [xsp+190h] [xbp-130h]
  __int128 v87; // [xsp+1A0h] [xbp-120h]
  __int128 v88; // [xsp+1B0h] [xbp-110h]
  __int128 *v89; // [xsp+1C0h] [xbp-100h]
  const char *v90[4]; // [xsp+228h] [xbp-98h] BYREF
  unsigned __int8 *s; // [xsp+248h] [xbp-78h] BYREF
  __int64 v92; // [xsp+250h] [xbp-70h]
  __int64 v93; // [xsp+258h] [xbp-68h]

  v93 = *(_QWORD *)(_ReadStatusReg(TPIDR_EL0) + 40);
  s = (unsigned __int8 *)&v75;
  memcpy(&v75, &off_F1750, 0x140u);
  v5 = 0;
LABEL_2:
  v6 = 2136769978;
  while ( 1 )
  {
    while ( 1 )
    {
      while ( v6 <= 1818038235 )
      {
        if ( v6 > 551672175 )
        {
          if ( v6 != 551672176 )
          {
            v5 = (_DWORD)n + 1;
            goto LABEL_2;
          }
          if ( v1 == 2 )
            v6 = -1460320636;
          else
            v6 = 2127117960;
          v4 = 1;
        }
        else if ( v6 == -1460320636 )
        {
          v4 = 0;
          v6 = 2127117960;
        }
        else
        {
          v1 = 2;
          v6 = 551672176;
        }
      }
      if ( v6 > 2127117959 )
        break;
      if ( v6 == 1818038236 )
      {
        v7 = v4;
        v8 = sub_8630(*((_QWORD *)&v75 + (__int64)v90[0]));
        v4 = v7;
        if ( v8 )
          v6 = 2125449089;
        else
          v6 = 1528261330;
      }
      else
      {
        v1 = 1;
        v6 = 551672176;
      }
    }
    if ( v6 != 2136769978 )
      break;
    LODWORD(n) = v5;
    v90[0] = (const char *)v5;
    if ( (unsigned __int64)v5 >= 0x28 )
      v6 = 110940348;
    else
      v6 = 1818038236;
  }
  *(_QWORD *)&v9 = &byte_F5F90;
  *(_QWORD *)&v12 = &byte_F5FC0;
  *((_QWORD *)&v9 + 1) = &qword_F5F98;
  v10 = a1;
  *(_QWORD *)&v11 = &qword_F5FA8;
  *((_QWORD *)&v11 + 1) = &qword_F5FB8;
  *((_QWORD *)&v12 + 1) = &qword_F5FC8;
  v13 = 1538905052;
  if ( a1 )
    v14 = -2127845691;
  else
    v14 = -2118451485;
  v65 = v14;
  if ( a1 )
    v15 = 1538905052;
  else
    v15 = -625639654;
  v64 = v15;
  v68 = v4;
  if ( a1 )
    v16 = 1989400566;
  else
    v16 = -1471785245;
  if ( a1 )
    v17 = 1354610781;
  else
    v17 = -571922970;
  if ( a1 )
    v18 = -1937909488;
  else
    v18 = 498352001;
  v66 = v16;
  if ( a1 )
    v19 = -357696151;
  else
    v19 = 138420468;
  v47 = v17;
  v20 = -53382763;
  v51 = v11;
  v52 = v9;
  v50 = v12;
  v48 = v19;
  v49 = v18;
  v21 = -1612750804;
  while ( 1 )
  {
    while ( 1 )
    {
LABEL_45:
      while ( 1 )
      {
        v22 = v21;
        if ( v21 <= -187071599 )
          break;
        if ( v21 > 600693034 )
        {
          if ( v21 > 1538905051 )
          {
            if ( v21 == 1538905052 )
            {
              v13 = sub_14068(v10, &byte_F2F08, (unsigned int)v2, v3);
              v21 = -625639654;
            }
            else if ( v21 == 1921421314 )
            {
              s = (unsigned __int8 *)&v75;
              v90[0] = (const char *)&v75;
              v13 = __system_property_get();
              LODWORD(n) = v13;
              v36 = -1772033963;
              while ( 1 )
              {
                while ( v36 > 1512214691 )
                {
                  if ( v36 == 1512214692 )
                  {
                    v13 = strcmp(v90[0], &byte_F2F20);
                    if ( (_DWORD)v13 )
                      v36 = 1893944387;
                    else
                      v36 = 2087480019;
                  }
                  else if ( v36 == 1893944387 )
                  {
                    v36 = -1439389967;
                    v20 = -1;
                  }
                  else
                  {
                    v20 = 0;
                    v36 = -1439389967;
                  }
                }
                if ( v36 != -1772033963 )
                  break;
                if ( (_DWORD)n )
                  v36 = 1512214692;
                else
                  v36 = 1893944387;
              }
              if ( v20 )
                v21 = -1552568980;
              else
                v21 = 1397757031;
              v20 = -53382763;
              v57 = v67;
            }
            else
            {
              v13 = sub_14068(v10, &byte_F2F18, (unsigned int)v2, v3);
              v21 = -1471785245;
            }
          }
          else
          {
            if ( v21 != 600693035 )
            {
              if ( v21 == 1354610781 )
              {
                v13 = sub_14068(v10, &byte_F2F10, (unsigned int)v2, v3);
                v21 = -571922970;
              }
              else
              {
                v21 = v48;
              }
              continue;
            }
            s = (unsigned __int8 *)&v75;
            v25 = 0;
            v75 = *(_OWORD *)&off_F1890;
            v76 = off_F18A0;
            v79 = *(_OWORD *)&off_F18D0;
            v80 = *(_OWORD *)&off_F18E0;
            v77 = off_F18B0;
            v78 = off_F18C0;
            v83 = *(_OWORD *)off_F1910;
            v84 = *(_OWORD *)off_F1920;
            v81 = *(_OWORD *)off_F18F0;
            v82 = *(_OWORD *)off_F1900;
            v87 = *(_OWORD *)off_F1950;
            v88 = *(_OWORD *)off_F1960;
            v89 = &xmmword_F64C0;
            v85 = *(_OWORD *)off_F1930;
            v86 = *(_OWORD *)off_F1940;
LABEL_97:
            v26 = -365833196;
            while ( 1 )
            {
              while ( 1 )
              {
                while ( v26 <= 7961847 )
                {
                  if ( v26 > -1147329502 )
                  {
                    if ( v26 == -1147329501 )
                    {
                      v25 = (_DWORD)n + 1;
                      goto LABEL_97;
                    }
                    LODWORD(n) = v25;
                    v90[0] = (const char *)v25;
                    if ( (unsigned __int64)v25 >= 0x1D )
                      v26 = -1196842701;
                    else
                      v26 = 7961848;
                  }
                  else
                  {
                    if ( v26 == -1911721637 )
                      LODWORD(v10) = 1;
                    else
                      LODWORD(v10) = 2;
                    v26 = 1202939335;
                  }
                }
                if ( v26 > 1202939334 )
                  break;
                if ( v26 == 7961848 )
                {
                  v13 = sub_8630(*((_QWORD *)&v75 + (__int64)v90[0]));
                  if ( (_DWORD)v13 )
                    v26 = -1911721637;
                  else
                    v26 = -1147329501;
                }
                else
                {
                  v20 = 0;
                  v26 = 1795188458;
                }
              }
              if ( v26 != 1202939335 )
                break;
              if ( (_DWORD)v10 == 2 )
                v26 = 452470419;
              else
                v26 = 1795188458;
              v20 = 1;
            }
            if ( v20 )
              v21 = 504685169;
            else
              v21 = -2144232525;
            v10 = a1;
            v55 = v58;
            v20 = -53382763;
          }
        }
        else if ( v21 > 498352000 )
        {
          if ( v21 == 498352001 )
          {
            v54 = 6;
            v21 = -1077281992;
          }
          else
          {
            v21 = v65;
            if ( v22 != 504685169 )
              v21 = v49;
          }
        }
        else
        {
          v21 = v66;
          if ( v22 != -187071598 )
          {
            if ( v22 == 138420468 )
            {
              v57 = 4;
              v21 = -1552568980;
            }
            else
            {
              v21 = v22;
              if ( v22 == 252025478 )
              {
                v90[0] = (const char *)&s;
                s = nullptr;
                v92 = 0;
                *(_QWORD *)&v75 = &s;
                v13 = sub_8E28((__int64)a35G, (__int64)&s, 16, v3);
                LODWORD(n) = v13;
                v24 = -373024082;
                while ( 1 )
                {
                  while ( v24 > -373024083 )
                  {
                    if ( v24 == 1932053289 )
                    {
                      v24 = -1899791052;
                      v20 = 1;
                    }
                    else if ( v24 == 339436227 )
                    {
                      v20 = 0;
                      v24 = -1899791052;
                    }
                    else if ( (_DWORD)n )
                    {
                      v24 = -1126839726;
                    }
                    else
                    {
                      v24 = 339436227;
                    }
                  }
                  if ( v24 == -1899791052 )
                    break;
                  v13 = sub_75D4((unsigned __int8 *)v75, (unsigned __int8 *)&qword_F6520, v2, (__int64)v3, v23);
                  if ( v13 )
                    v24 = 1932053289;
                  else
                    v24 = 339436227;
                }
                if ( v20 )
                  v21 = 560132442;
                else
                  v21 = -1077281992;
                v20 = -53382763;
                v54 = v56;
              }
            }
          }
        }
      }
      if ( v21 > -1552568981 )
        break;
      if ( v21 <= -1937909489 )
      {
        if ( v21 != -2144232525 )
        {
          if ( v21 == -2127845691 )
          {
            v13 = sub_14068(v10, &byte_F2F0C, (unsigned int)v2, v3);
            v21 = -2118451485;
          }
          else
          {
            v55 = 2;
            v21 = -2144232525;
          }
          continue;
        }
        v75 = v52;
        v77 = v50;
        v76 = v51;
        v13 = (size_t)fopen(aL31L0L670c, aL);
        v29 = -248303840;
        stream = (FILE *)v13;
        while ( 2 )
        {
          while ( 2 )
          {
            while ( 2 )
            {
              while ( 2 )
              {
                while ( 1 )
                {
                  v30 = v29;
                  v31 = v28;
                  if ( v29 <= -53382764 )
                    break;
                  if ( v29 > 1044552200 )
                  {
                    if ( v29 > 1471482161 )
                    {
                      if ( v29 == 1471482162 )
                      {
                        v61 = 2;
                        v60 = v74 + 1;
                        v29 = -200005676;
                      }
                      else if ( v29 == 1509633329 )
                      {
                        v63 = 1;
                        v29 = 404469054;
                      }
                      else
                      {
                        v29 = -683384406;
                      }
                      continue;
                    }
                    if ( v29 == 1044552201 )
                    {
                      fseek(stream, 0, 2);
                      v34 = ftell(stream);
                      v35 = 20000;
                      if ( v34 )
                        v35 = v34;
                      n = (const char **)v35;
                      v13 = (size_t)calloc(v35, 1u);
                      s = (unsigned __int8 *)v13;
                      v32 = v13 == 0;
                      v33 = -1977307044;
                      v29 = -261820133;
                    }
                    else
                    {
                      if ( v29 == 1381366656 )
                      {
                        LODWORD(v59) = v69 + 1;
                        HIDWORD(v59) = (_DWORD)p_s;
                        v29 = -461819412;
                        continue;
                      }
                      v13 = sub_75D4(s, *((unsigned __int8 **)&v75 + (__int64)v90[0]), v2, (__int64)v3, v27);
                      v32 = v13 == 0;
                      v33 = -1604381305;
                      v29 = 1471482162;
                    }
LABEL_126:
                    if ( v32 )
                      v29 = v33;
                    v28 = v31;
                    continue;
                  }
                  if ( v29 > 439831680 )
                  {
                    if ( v29 == 439831681 )
                    {
                      v29 = -469390329;
                      v62 = v74;
                    }
                    else
                    {
                      if ( v29 != 933589765 )
                      {
                        if ( (v28 & 1) != 0 )
                          v21 = -1383908600;
                        else
                          v21 = 1921421314;
                        v67 = v55;
                        goto LABEL_45;
                      }
                      free(s);
                      v29 = 1834487228;
                      v28 = v31;
                    }
                  }
                  else
                  {
                    v28 = v67;
                    v29 = 466503319;
                    if ( v30 != -53382763 )
                    {
                      if ( v30 == 58059018 )
                      {
                        v28 = v31;
                        v67 = (((unsigned __int8)v70 ^ 0xFE) & (unsigned __int8)v70) != 0;
                        v29 = -53382763;
                      }
                      else
                      {
                        v28 = v31;
                        v29 = v30;
                        if ( v30 == 404469054 )
                        {
                          v29 = 933589765;
                          v70 = v63;
                          v28 = v31;
                        }
                      }
                    }
                  }
                }
                if ( v29 <= -577174537 )
                {
                  if ( v29 <= -1585581986 )
                  {
                    if ( v29 == -1977307044 )
                    {
                      v29 = -1585581985;
                    }
                    else
                    {
                      v29 = -200005676;
                      v60 = v74;
                      v61 = 0;
                    }
                  }
                  else if ( v29 == -1585581985 )
                  {
                    v13 = fclose(stream);
                    v29 = -750224436;
                    v28 = v31;
                  }
                  else if ( v29 == -750224436 )
                  {
                    v67 = 0;
                    v29 = -53382763;
                  }
                  else
                  {
                    v13 = fclose(stream);
                    v29 = 58059018;
                    v28 = v31;
                  }
                  continue;
                }
                break;
              }
              if ( v29 <= -261820134 )
              {
                if ( v29 == -577174536 )
                {
                  v28 = 0;
                  v29 = 466503319;
                }
                else if ( v29 == -469390329 )
                {
                  v63 = 0;
                  if ( v62 <= 0 )
                    v29 = 404469054;
                  else
                    v29 = 1509633329;
                }
                else
                {
                  v74 = HIDWORD(v59);
                  v69 = v59;
                  v90[0] = (const char *)(int)v59;
                  if ( (unsigned __int64)(int)v59 >= 6 )
                    v29 = 439831681;
                  else
                    v29 = 1399567431;
                }
                continue;
              }
              break;
            }
            if ( v29 == -261820133 )
            {
              v13 = fread(s, 1u, (size_t)n, stream);
              v59 = 0;
              v28 = v31;
              v29 = -461819412;
              continue;
            }
            break;
          }
          if ( v29 != -248303840 )
          {
            LODWORD(p_s) = v60;
            v62 = v60;
            if ( v61 )
              v29 = -469390329;
            else
              v29 = 1381366656;
            continue;
          }
          break;
        }
        v29 = 1044552201;
        v32 = stream == nullptr;
        v33 = -577174536;
        goto LABEL_126;
      }
      if ( v21 == -1937909488 )
      {
        v13 = sub_14068(v10, &byte_F2F1C, (unsigned int)v2, v3);
        v21 = 498352001;
      }
      else
      {
        v21 = v64;
        if ( v22 != -1693859291 )
        {
          v58 = 0;
          if ( v68 )
            v21 = -1693859291;
          else
            v21 = 600693035;
        }
      }
    }
    if ( v21 > -1077281993 )
      break;
    if ( v21 == -1552568980 )
    {
      v37 = sub_E89A4(v13, 7961847);
      p_s = (void **)&s;
      s = nullptr;
      v92 = 0;
      sprintf((char *)&s, &byte_F3434, v37);
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      sub_6630(&v75, &qword_F36F8, v38, (unsigned __int8 *)&v75);
      sub_6630(&v75, &s, v39, v40);
      sub_6630(&v75, aJ117j573e, v41, v42);
      n = v90;
      memset(v90, 0, sizeof(v90));
      v13 = sub_8E28((__int64)&v75, (__int64)v90, 32, v43);
      v74 = v13;
      v45 = 1722576404;
      while ( 1 )
      {
        while ( v45 > 878050203 )
        {
          if ( v45 == 878050204 )
          {
            v45 = 468991389;
            v20 = 1;
          }
          else if ( v45 == 1635458208 )
          {
            v20 = 0;
            v45 = 468991389;
          }
          else if ( v74 )
          {
            v45 = 419377723;
          }
          else
          {
            v45 = 1635458208;
          }
        }
        if ( v45 != 419377723 )
          break;
        v13 = sub_75D4((unsigned __int8 *)v90, (unsigned __int8 *)&byte_F6504, v2, (__int64)v3, v44);
        if ( v13 )
          v45 = 878050204;
        else
          v45 = 1635458208;
      }
      if ( v20 )
        v21 = -187071598;
      else
        v21 = 252025478;
      v20 = -53382763;
      v56 = v57;
    }
    else if ( v21 == -1471785245 )
    {
      v56 = 5;
      v21 = 252025478;
    }
    else
    {
      v21 = v47;
    }
  }
  if ( v21 > -571922971 )
  {
    if ( v21 == -571922970 )
    {
      v67 = 3;
      v21 = 1921421314;
    }
    else
    {
      v13 = sub_14068(v10, &byte_F2F14, (unsigned int)v2, v3);
      v21 = 138420468;
    }
    goto LABEL_45;
  }
  if ( v21 == -625639654 )
  {
    v58 = 1;
    v21 = 600693035;
    goto LABEL_45;
  }
  return v54;
}
