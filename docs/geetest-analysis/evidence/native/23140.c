__int64 __fastcall sub_23140(__int64 a1)
{
  int v1; // w24
  __int64 result; // x0
  int v4; // w1
  int v5; // w9
  int v6; // w8
  int v7; // w26
  int v8; // w22
  _QWORD *v9; // [xsp+8h] [xbp-68h]
  __int64 v10; // [xsp+10h] [xbp-60h]
  int v11; // [xsp+1Ch] [xbp-54h]

  result = sub_F59C();
  v5 = -848174174;
  v9 = (_QWORD *)result;
  while ( 1 )
  {
    while ( 1 )
    {
      while ( 1 )
      {
        v6 = v5;
        v7 = v4;
        v8 = result;
        if ( v5 <= 450589455 )
          break;
        if ( v5 > 712147392 )
        {
          v4 = v1;
          v5 = -396875232;
          if ( v6 != 712147393 )
          {
            if ( v6 == 886944067 )
            {
LABEL_23:
              v1 = 0;
LABEL_24:
              LODWORD(result) = v8;
              v4 = v7;
              v5 = 712147393;
            }
            else
            {
              sub_B6D0(a1);
              sub_10C30(a1, v9);
              v4 = 0;
              LODWORD(result) = v8;
              v5 = -396875232;
            }
          }
        }
        else
        {
          if ( v5 == 450589456 )
          {
            v11 = (*(__int64 (__fastcall **)(__int64, _QWORD, __int64))(*(_QWORD *)a1 + 800LL))(a1, v9[1], v10);
            if ( (*(unsigned __int8 (__fastcall **)(__int64))(*(_QWORD *)a1 + 1824LL))(a1) )
              v5 = 552459581;
            else
              v5 = -202545026;
            goto LABEL_2;
          }
          if ( v5 == 552459581 )
          {
            (*(void (__fastcall **)(__int64))(*(_QWORD *)a1 + 128LL))(a1);
            (*(void (__fastcall **)(__int64))(*(_QWORD *)a1 + 136LL))(a1);
            sub_10C30(a1, v9);
            goto LABEL_23;
          }
          LODWORD(result) = 0;
          v5 = -408670643;
        }
      }
      if ( v5 <= -396875233 )
        break;
      LODWORD(result) = v4;
      v5 = -408670643;
      if ( v6 != -396875232 )
      {
        if ( v6 == -202545026 )
        {
          sub_10C30(a1, v9);
          if ( ((v11 ^ 0xFFFFFFFD) & v11) != 0 )
            v5 = -135240696;
          else
            v5 = 886944067;
          goto LABEL_2;
        }
        LODWORD(result) = v8;
        v5 = v6;
        if ( v6 == -135240696 )
        {
          v1 = 1;
          goto LABEL_24;
        }
      }
    }
    if ( v5 != -1041891662 )
      break;
    v10 = (*(__int64 (__fastcall **)(__int64, _QWORD, char *, char *))(*(_QWORD *)a1 + 752LL))(
            a1,
            *v9,
            &byte_F2FE4,
            &byte_F2FEC);
    if ( v10 )
      v5 = 450589456;
    else
      v5 = 1370680502;
LABEL_2:
    LODWORD(result) = v8;
    v4 = v7;
  }
  if ( v5 == -848174174 )
  {
    if ( v9 )
      v5 = -1041891662;
    else
      v5 = 623157673;
    goto LABEL_2;
  }
  return (unsigned int)result;
}
