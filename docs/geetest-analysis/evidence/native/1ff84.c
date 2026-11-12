__int64 __fastcall sub_1FF84(__int64 a1, __int64 a2, __int64 a3)
{
  int v3; // w27
  __int64 v5; // x0
  int i; // w9
  int v7; // w8
  unsigned int v8; // w21
  bool v9; // zf
  int v10; // w8
  _BYTE *v11; // x3
  _BYTE *v12; // x3
  unsigned int v15; // [xsp+14h] [xbp-13Ch]
  int v16; // [xsp+18h] [xbp-138h]
  unsigned int v17; // [xsp+1Ch] [xbp-134h]
  _QWORD *v18; // [xsp+28h] [xbp-128h]
  _QWORD *v19; // [xsp+30h] [xbp-120h]
  __int64 v20; // [xsp+38h] [xbp-118h]
  _QWORD *v21; // [xsp+40h] [xbp-110h]
  __int64 v22; // [xsp+48h] [xbp-108h]
  __int64 v23; // [xsp+50h] [xbp-100h]
  __int64 v24; // [xsp+58h] [xbp-F8h]
  char v25[16]; // [xsp+60h] [xbp-F0h] BYREF
  __int128 v26; // [xsp+70h] [xbp-E0h]
  __int128 v27; // [xsp+80h] [xbp-D0h]
  __int128 v28; // [xsp+90h] [xbp-C0h]
  char s[16]; // [xsp+A0h] [xbp-B0h] BYREF
  __int128 v30; // [xsp+B0h] [xbp-A0h]
  __int128 v31; // [xsp+C0h] [xbp-90h]
  __int128 v32; // [xsp+D0h] [xbp-80h]

  _ReadStatusReg(TPIDR_EL0);
  v5 = sub_10214(a1, a2);
  v18 = (_QWORD *)v5;
  for ( i = 1322414421; ; i = 1952842549 )
  {
    while ( 1 )
    {
      while ( 1 )
      {
        while ( 1 )
        {
          v7 = i;
          v8 = v5;
          if ( i > 269402685 )
            break;
          if ( i > -1406886694 )
          {
            if ( i > -624464963 )
            {
              LODWORD(v5) = v3;
              i = -432937794;
              if ( v7 != -624464962 )
              {
                LODWORD(v5) = v8;
                i = v7;
                if ( v7 == -432937794 )
                {
                  v17 = v8;
                  goto LABEL_25;
                }
              }
            }
            else
            {
              if ( i != -1406886693 )
              {
                v15 = v17;
                goto LABEL_37;
              }
              v19 = v18;
              v20 = (*(__int64 (__fastcall **)(__int64, _QWORD, __int128 *, char *))(*(_QWORD *)a1 + 752LL))(
                      a1,
                      *v18,
                      &xmmword_F2E20,
                      &byte_F2E34);
              i = 1783286966;
              v9 = v20 == 0;
              v10 = -2071074568;
LABEL_2:
              if ( !v9 )
                i = v10;
              LODWORD(v5) = v8;
            }
          }
          else if ( i > -1674822991 )
          {
            if ( i != -1674822990 )
            {
              v24 = (*(__int64 (__fastcall **)(__int64, _QWORD, __int64))(*(_QWORD *)a1 + 808LL))(a1, *v21, v23);
              v9 = (*(unsigned __int8 (__fastcall **)(__int64))(*(_QWORD *)a1 + 1824LL))(a1) == 0;
              v10 = 269402686;
              i = 1221625244;
              goto LABEL_2;
            }
            (*(void (__fastcall **)(__int64))(*(_QWORD *)a1 + 128LL))(a1);
            (*(void (__fastcall **)(__int64))(*(_QWORD *)a1 + 136LL))(a1);
            sub_10C30(a1, v18);
            LODWORD(v5) = 0;
            i = -432937794;
          }
          else
          {
            if ( i == -2071074568 )
            {
              v21 = v18 + 1;
              v22 = (*(__int64 (__fastcall **)(__int64, _QWORD, __int64))(*(_QWORD *)a1 + 808LL))(a1, v18[1], v20);
              v9 = (*(unsigned __int8 (__fastcall **)(__int64))(*(_QWORD *)a1 + 1824LL))(a1) == 0;
              v10 = -1674822990;
              i = 1080568396;
              goto LABEL_2;
            }
            v3 = v16;
            i = -624464962;
          }
        }
        if ( i > 1322414420 )
          break;
        if ( i > 1080568395 )
        {
          if ( i == 1080568396 )
          {
            v23 = (*(__int64 (__fastcall **)(__int64, _QWORD, __int64 *, char *))(*(_QWORD *)a1 + 752LL))(
                    a1,
                    *v19,
                    &qword_F2E38,
                    &byte_F2E34);
            i = 786569896;
            v9 = v23 == 0;
            v10 = -1633420931;
            goto LABEL_2;
          }
          v31 = 0u;
          v32 = 0u;
          v30 = 0u;
          *(_OWORD *)s = 0u;
          sprintf(s, &byte_F2E48, v22 / 1000);
          v27 = 0u;
          v28 = 0u;
          *(_OWORD *)v25 = 0u;
          v26 = 0u;
          sprintf(v25, &byte_F2E48, v24 / 1000);
          sub_13C74(a3, (__int64)&byte_F2E4C, s, v11);
          sub_13C74(a3, (__int64)&byte_F2E50, v25, v12);
          sub_10C30(a1, v18);
          v16 = 1;
LABEL_34:
          LODWORD(v5) = v8;
          i = -1734199438;
        }
        else
        {
          if ( i == 269402686 )
          {
            (*(void (__fastcall **)(__int64))(*(_QWORD *)a1 + 128LL))(a1);
            (*(void (__fastcall **)(__int64))(*(_QWORD *)a1 + 136LL))(a1);
            sub_10C30(a1, v18);
            v16 = 0;
            goto LABEL_34;
          }
          sub_B6D0(a1);
          sub_10C30(a1, v18);
          v3 = 0;
          LODWORD(v5) = v8;
          i = -624464962;
        }
      }
      if ( i > 1952842548 )
        break;
      if ( i == 1322414421 )
      {
        i = 2137576583;
        v9 = v18 == nullptr;
        v10 = -1406886693;
        goto LABEL_2;
      }
      sub_B6D0(a1);
      sub_10C30(a1, v18);
      v17 = 0;
LABEL_25:
      LODWORD(v5) = v8;
      i = -684693226;
    }
    if ( i != 2137576583 )
      break;
    v15 = 0;
LABEL_37:
    ;
  }
  return v15;
}
