__int64 __fastcall sub_D490C(__int64 a1, __int64 a2)
{
  __int64 v2; // x22
  __int64 v3; // x25
  __int64 result; // x0
  __int64 v6; // x1
  __int64 v7; // x2
  int v8; // w9
  int v9; // w8
  __int64 v10; // x23
  __int64 v11; // x27
  __int64 v12; // x28
  bool v13; // zf
  int v14; // w8
  unsigned int v16; // [xsp+Ch] [xbp-94h]
  __int64 v17; // [xsp+10h] [xbp-90h]
  __int64 v18; // [xsp+18h] [xbp-88h]
  __int64 v19; // [xsp+20h] [xbp-80h]
  __int64 v20; // [xsp+28h] [xbp-78h]
  __int64 v21; // [xsp+30h] [xbp-70h]
  unsigned int v22; // [xsp+3Ch] [xbp-64h]
  __int64 v23; // [xsp+40h] [xbp-60h]
  __int64 v24; // [xsp+48h] [xbp-58h]

  result = sub_DB2C();
  v8 = -1315570131;
  v17 = result;
  while ( 1 )
  {
    while ( 1 )
    {
      while ( 1 )
      {
        v9 = v8;
        v10 = v7;
        v11 = v6;
        v12 = result;
        if ( v8 <= 319037298 )
          break;
        if ( v8 > 1745319303 )
        {
          if ( v8 <= 1969109801 )
          {
            if ( v8 != 1745319304 )
            {
              v21 = (*(__int64 (__fastcall **)(__int64, __int64, char *, char *))(*(_QWORD *)a1 + 264LL))(
                      a1,
                      v20,
                      aLnXnybo,
                      &byte_F80AC);
              v8 = 1613607329;
              v13 = v21 == 0;
              v14 = -1107523357;
              goto LABEL_40;
            }
            sub_B6D0(a1);
            v6 = 0;
            result = v12;
            v7 = v10;
            v8 = 2050966063;
          }
          else
          {
            result = v2;
            v8 = -270064473;
            if ( v9 != 1969109802 )
            {
              if ( v9 != 1999443525 )
              {
                result = v12;
                v2 = v6;
                goto LABEL_24;
              }
              v18 = (*(__int64 (__fastcall **)(__int64, char *))(*(_QWORD *)a1 + 48LL))(a1, a5000113P171t);
              v8 = 516486341;
              v13 = v18 == 0;
              v14 = -706984761;
LABEL_40:
              if ( !v13 )
                v8 = v14;
              goto LABEL_2;
            }
          }
        }
        else if ( v8 <= 786040968 )
        {
          if ( v8 == 319037299 )
          {
            (*(void (__fastcall **)(__int64))(*(_QWORD *)a1 + 128LL))(a1);
            (*(void (__fastcall **)(__int64))(*(_QWORD *)a1 + 136LL))(a1);
            v16 = v22;
LABEL_43:
            result = v12;
            v6 = v11;
            v7 = v10;
            v8 = -349135183;
          }
          else
          {
            sub_B6D0(a1);
            v2 = 0;
            result = v12;
LABEL_24:
            v6 = v11;
            v7 = v10;
            v8 = 1969109802;
          }
        }
        else
        {
          v6 = v7;
          v8 = 2050966063;
          if ( v9 != 786040969 )
          {
            if ( v9 != 840299362 )
            {
              sub_B6D0(a1);
              v16 = 0;
              goto LABEL_43;
            }
            v20 = (*(__int64 (__fastcall **)(__int64, __int64))(*(_QWORD *)a1 + 248LL))(a1, a2);
            if ( v20 )
              v8 = 1840409551;
            else
              v8 = -819039365;
LABEL_2:
            result = v12;
            v6 = v11;
            v7 = v10;
          }
        }
      }
      if ( v8 > -819039366 )
        break;
      if ( v8 <= -1107523358 )
      {
        if ( v8 != -1564790992 )
        {
          v8 = -922714525;
          v13 = v17 == 0;
          v14 = 1999443525;
          goto LABEL_40;
        }
        (*(void (__fastcall **)(__int64, __int64))(*(_QWORD *)a1 + 184LL))(a1, v18);
        (*(void (__fastcall **)(__int64, __int64))(*(_QWORD *)a1 + 184LL))(a1, v17);
        (*(void (__fastcall **)(__int64, __int64))(*(_QWORD *)a1 + 184LL))(a1, v23);
        v3 = v24;
LABEL_45:
        result = v12;
        v6 = v11;
        v7 = v10;
        v8 = -985246903;
      }
      else
      {
        if ( v8 == -1107523357 )
        {
          v22 = sub_C4A8(a1, a2, v21);
          v16 = v22;
          if ( (*(unsigned __int8 (__fastcall **)(__int64))(*(_QWORD *)a1 + 1824LL))(a1) )
            v8 = 319037299;
          else
            v8 = -349135183;
          goto LABEL_2;
        }
        v7 = v3;
        v8 = 786040969;
        if ( v9 != -985246903 )
        {
          sub_B6D0(a1);
          result = 0;
          v6 = v11;
          v7 = v10;
          v8 = -270064473;
        }
      }
    }
    if ( v8 > -553307807 )
      break;
    if ( v8 != -819039365 )
    {
      v19 = (*(__int64 (__fastcall **)(__int64, __int64, __int128 *, __int128 *))(*(_QWORD *)a1 + 904LL))(
              a1,
              v18,
              &xmmword_F8030,
              &xmmword_F8050);
      v8 = 1745319304;
      v13 = v19 == 0;
      v14 = 840299362;
      goto LABEL_40;
    }
    sub_B6D0(a1);
    v7 = 0;
    result = v12;
    v6 = v11;
    v8 = 786040969;
  }
  if ( v8 == -553307806 )
  {
    sub_B6D0(a1);
    v3 = 0;
    goto LABEL_45;
  }
  if ( v8 == -349135183 )
  {
    v23 = (*(__int64 (__fastcall **)(__int64, __int64 *))(*(_QWORD *)a1 + 1336LL))(a1, &qword_F7C08);
    v24 = sub_CEE8(a1, v18, v19, v17, v23, v16);
    v8 = -553307806;
    v13 = v24 == 0;
    v14 = -1564790992;
    goto LABEL_40;
  }
  return result;
}
