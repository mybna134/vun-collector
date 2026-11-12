__int64 __fastcall sub_4B03C(__int64 a1, __int64 a2, unsigned int a3, unsigned int a4)
{
  int v4; // w25
  int v5; // w26
  __int64 v6; // x20
  int v7; // w9
  int v8; // w8
  unsigned int v9; // w27
  unsigned int v10; // w24
  int v11; // w19
  unsigned int v12; // w22
  bool v13; // zf
  int v14; // w8
  __int64 v16; // [xsp+8h] [xbp-98h]
  unsigned int v17; // [xsp+10h] [xbp-90h]
  bool v18; // [xsp+16h] [xbp-8Ah]
  bool v19; // [xsp+17h] [xbp-89h]
  __int64 v20; // [xsp+18h] [xbp-88h]
  __int64 v21; // [xsp+20h] [xbp-80h]
  __int64 v22; // [xsp+28h] [xbp-78h]
  __int64 v23; // [xsp+30h] [xbp-70h]
  __int64 v24; // [xsp+38h] [xbp-68h]
  __int64 v25; // [xsp+40h] [xbp-60h]
  __int64 v26; // [xsp+48h] [xbp-58h]

  v6 = a1;
  v18 = a1 == 0;
  v7 = 1906045016;
  v16 = a2;
  v19 = a2 == 0;
  while ( 1 )
  {
    while ( 1 )
    {
      while ( 1 )
      {
        while ( 1 )
        {
          v8 = v7;
          v9 = a4;
          v10 = a3;
          v11 = a2;
          v12 = a1;
          if ( v7 > 2784865 )
            break;
          if ( v7 <= -423959986 )
          {
            if ( v7 <= -1686603617 )
            {
              a4 = v4;
              v7 = 1048159702;
              if ( v8 != -2091150474 )
              {
                v21 = (*(__int64 (__fastcall **)(__int64, __int64, __int128 *, __int128 *))(*(_QWORD *)v6 + 264LL))(
                        v6,
                        v20,
                        &xmmword_F6F20,
                        &xmmword_F6F40);
                v7 = -1686603616;
                v13 = v21 == 0;
                v14 = 75638588;
                goto LABEL_45;
              }
            }
            else if ( v7 == -1686603616 )
            {
              sub_B6D0(v6);
              v5 = 0;
              LODWORD(a1) = v12;
LABEL_39:
              LODWORD(a2) = v11;
              a3 = v10;
              a4 = v9;
              v7 = -169886203;
            }
            else
            {
              if ( v7 != -504357747 )
              {
                v5 = a2;
                goto LABEL_39;
              }
              sub_B6D0(v6);
              (*(void (__fastcall **)(__int64, __int64))(*(_QWORD *)v6 + 184LL))(v6, v25);
              (*(void (__fastcall **)(__int64, __int64))(*(_QWORD *)v6 + 184LL))(v6, v22);
              v4 = 0;
LABEL_41:
              LODWORD(a1) = v12;
              LODWORD(a2) = v11;
              a3 = v10;
              a4 = v9;
              v7 = -2091150474;
            }
          }
          else if ( v7 > -169886204 )
          {
            LODWORD(a1) = v5;
            v7 = -108041121;
            if ( v8 != -169886203 )
            {
              if ( v8 == -137705194 )
              {
                sub_B6D0(v6);
                a3 = 0;
                LODWORD(a1) = v12;
                LODWORD(a2) = v11;
                a4 = v9;
                v7 = 1986794928;
              }
              else
              {
                LODWORD(a1) = v12;
                v7 = v8;
                if ( v8 == -108041121 )
                {
                  v17 = v12;
                  goto LABEL_48;
                }
              }
            }
          }
          else
          {
            if ( v7 == -423959985 )
            {
              v24 = (*(__int64 (__fastcall **)(__int64, __int64, __int64 *, __int128 *))(*(_QWORD *)v6 + 264LL))(
                      v6,
                      v23,
                      &qword_F6F98,
                      &xmmword_F6FB0);
              v7 = -251047503;
              v13 = v24 == 0;
              v14 = 1350708881;
              goto LABEL_45;
            }
            if ( v7 == -406530749 )
            {
              (*(void (__fastcall **)(__int64, __int64))(*(_QWORD *)v6 + 184LL))(v6, v25);
              (*(void (__fastcall **)(__int64, __int64))(*(_QWORD *)v6 + 184LL))(v6, v22);
              (*(void (__fastcall **)(__int64, __int64))(*(_QWORD *)v6 + 184LL))(v6, v26);
              v4 = 1;
              goto LABEL_41;
            }
            sub_B6D0(v6);
            a4 = 0;
            LODWORD(a1) = v12;
            LODWORD(a2) = v11;
            a3 = v10;
            v7 = 1048159702;
          }
        }
        if ( v7 <= 1350708880 )
          break;
        if ( v7 <= 1906045015 )
        {
          if ( v7 != 1350708881 )
          {
            v20 = (*(__int64 (__fastcall **)(__int64, __int128 *, _QWORD, _QWORD))(*(_QWORD *)v6 + 48LL))(
                    v6,
                    &xmmword_F6F00,
                    a3,
                    a4);
            v7 = 1172612196;
            v13 = v20 == 0;
            v14 = -2067204412;
            goto LABEL_45;
          }
          v25 = (*(__int64 (__fastcall **)(__int64, __int128 *))(*(_QWORD *)v6 + 1336LL))(v6, &xmmword_F6FF0);
          v26 = sub_BF48(v6, v22, v24);
          if ( v26 )
            v7 = -406530749;
          else
            v7 = -504357747;
LABEL_2:
          LODWORD(a1) = v12;
          LODWORD(a2) = v11;
          a3 = v10;
          a4 = v9;
        }
        else
        {
          LODWORD(a2) = a3;
          v7 = -437959450;
          if ( v8 != 1986794928 )
          {
            if ( v8 != 1983176668 )
            {
              if ( (v18 ^ v19) & 1 | (v18 && v19) )
                v7 = 1010925503;
              else
                v7 = 1847479206;
              goto LABEL_2;
            }
            sub_B6D0(v6);
            LODWORD(a2) = 0;
            LODWORD(a1) = v12;
            a3 = v10;
            a4 = v9;
            v7 = -437959450;
          }
        }
      }
      if ( v7 <= 1048159701 )
        break;
      a3 = a4;
      v7 = 1986794928;
      if ( v8 != 1048159702 )
      {
        if ( v8 != 1172612196 )
        {
          v23 = (*(__int64 (__fastcall **)(__int64, __int128 *, _QWORD, _QWORD))(*(_QWORD *)v6 + 48LL))(
                  v6,
                  &xmmword_F6F70,
                  v10,
                  a4);
          v7 = -137705194;
          v13 = v23 == 0;
          v14 = -423959985;
          goto LABEL_45;
        }
        sub_B6D0(v6);
        LODWORD(a1) = 0;
        LODWORD(a2) = v11;
        a3 = v10;
        a4 = v9;
        v7 = -108041121;
      }
    }
    if ( v7 == 75638588 )
    {
      v22 = sub_BF48(v6, v16, v21);
      v7 = 1983176668;
      v13 = v22 == 0;
      v14 = 1259659906;
LABEL_45:
      if ( !v13 )
        v7 = v14;
      goto LABEL_2;
    }
    if ( v7 != 1010925503 )
      return v17;
    v17 = 0;
LABEL_48:
    LODWORD(a1) = v12;
    v7 = 2784866;
  }
}
