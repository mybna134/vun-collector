__int64 __fastcall sub_47A40(__int64 a1, __int64 a2)
{
  unsigned int v2; // w21
  _BOOL4 v3; // w26
  __int64 result; // x0
  unsigned int v6; // w1
  _BOOL4 v7; // w2
  _BOOL4 v8; // w3
  int v9; // w9
  int v10; // w8
  _BOOL4 v11; // w25
  _BOOL4 v12; // w28
  unsigned int v13; // w22
  int v14; // w24
  bool v15; // zf
  int v16; // w8
  _QWORD *v17; // [xsp+0h] [xbp-80h]
  __int64 v18; // [xsp+8h] [xbp-78h]
  __int64 v19; // [xsp+10h] [xbp-70h]
  __int64 v20; // [xsp+18h] [xbp-68h]
  __int64 v21; // [xsp+20h] [xbp-60h]
  char v22; // [xsp+2Ch] [xbp-54h]

  result = sub_1723C(a1, a2, &qword_F6AB0);
  v9 = 779586728;
  v17 = (_QWORD *)result;
  while ( 1 )
  {
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
            v12 = v7;
            v13 = v6;
            v14 = result;
            if ( v9 > 779586727 )
              break;
            if ( v9 <= 54499882 )
            {
              if ( v9 > -715617021 )
              {
                if ( v9 == -715617020 )
                {
                  v19 = sub_BF48(a1, v17[1], v18);
                  if ( v19 )
                    v9 = 1633664569;
                  else
                    v9 = 578553274;
                  goto LABEL_2;
                }
                sub_B6D0(a1);
                v7 = 0;
                LODWORD(result) = v14;
                v6 = v13;
                v8 = v11;
                v9 = 54499883;
              }
              else
              {
                v8 = v3;
                v9 = 1519992540;
                if ( v10 != -1639233150 )
                {
                  (*(void (__fastcall **)(__int64, _QWORD, _BOOL4, _BOOL4))(*(_QWORD *)a1 + 128LL))(a1, v6, v7, v11);
                  (*(void (__fastcall **)(__int64))(*(_QWORD *)a1 + 136LL))(a1);
                  v3 = 0;
                  LODWORD(result) = v14;
                  v6 = v13;
                  v7 = v12;
                  v8 = v11;
                  v9 = -1639233150;
                }
              }
            }
            else if ( v9 <= 578553273 )
            {
              v6 = v7;
              v9 = 1917532856;
              if ( v10 != 54499883 )
              {
                v21 = (*(__int64 (__fastcall **)(__int64, __int64, __int64 *, char *))(*(_QWORD *)a1 + 264LL))(
                        a1,
                        v20,
                        &qword_F6AF0,
                        &byte_F6AFC);
                if ( v21 )
                  v9 = 725275003;
                else
                  v9 = 895905688;
                goto LABEL_2;
              }
            }
            else if ( v9 == 578553274 )
            {
              sub_B6D0(a1);
              sub_10C30(a1, v17);
              v6 = 0;
              LODWORD(result) = v14;
              v7 = v12;
              v8 = v11;
              v9 = 1917532856;
            }
            else
            {
              if ( v9 != 628333967 )
              {
                v22 = sub_11964(a1, v19, v21);
                if ( (*(unsigned __int8 (__fastcall **)(__int64))(*(_QWORD *)a1 + 1824LL))(a1) )
                  v9 = -747968056;
                else
                  v9 = 874340020;
                goto LABEL_2;
              }
              LODWORD(result) = 0;
              v9 = 1247830218;
            }
          }
          if ( v9 <= 1519992539 )
            break;
          if ( v9 <= 1835039358 )
          {
            v7 = v8;
            v9 = 54499883;
            if ( v10 != 1519992540 )
            {
              sub_10C30(a1, v17);
              v20 = (*(__int64 (__fastcall **)(__int64, __int64))(*(_QWORD *)a1 + 248LL))(a1, v19);
              v9 = 227229856;
              v15 = v20 == 0;
              v16 = -106452379;
              goto LABEL_42;
            }
          }
          else
          {
            if ( v9 == 1835039359 )
            {
              v18 = (*(__int64 (__fastcall **)(__int64, _QWORD, __int64 *, __int128 *))(*(_QWORD *)a1 + 264LL))(
                      a1,
                      *v17,
                      &qword_F6AC0,
                      &xmmword_F6AD0);
              if ( v18 )
                v9 = -715617020;
              else
                v9 = 804963007;
              goto LABEL_2;
            }
            LODWORD(result) = v2;
            v9 = 1247830218;
            if ( v10 != 1858951379 )
            {
              LODWORD(result) = v14;
              v2 = v6;
              goto LABEL_31;
            }
          }
        }
        if ( v9 > 874340019 )
          break;
        if ( v9 == 779586728 )
        {
          v9 = 1835039359;
          v15 = v17 == nullptr;
          v16 = 628333967;
LABEL_42:
          if ( v15 )
            v9 = v16;
LABEL_2:
          LODWORD(result) = v14;
          v6 = v13;
          v7 = v12;
          v8 = v11;
        }
        else
        {
          sub_B6D0(a1);
          v2 = 0;
          LODWORD(result) = v14;
LABEL_31:
          v6 = v13;
          v7 = v12;
          v8 = v11;
          v9 = 1858951379;
        }
      }
      if ( v9 != 874340020 )
        break;
      (*(void (__fastcall **)(__int64, __int64))(*(_QWORD *)a1 + 184LL))(a1, v19);
      (*(void (__fastcall **)(__int64, __int64))(*(_QWORD *)a1 + 184LL))(a1, v20);
      LODWORD(result) = v14;
      v6 = v13;
      v7 = v12;
      v8 = v11;
      v3 = v22 != 0;
      v9 = -1639233150;
    }
    if ( v9 != 895905688 )
      return (unsigned int)result;
    sub_B6D0(a1);
    v8 = 0;
    LODWORD(result) = v14;
    v6 = v13;
    v7 = v12;
    v9 = 1519992540;
  }
}
