__int64 __fastcall sub_43720(__int64 a1, __int64 a2)
{
  __int64 v2; // x25
  __int64 v4; // x0
  int i; // w9
  int v6; // w8
  __int64 v7; // x23
  __int64 v10; // [xsp+10h] [xbp-70h]
  __int64 v11; // [xsp+18h] [xbp-68h]
  __int64 v12; // [xsp+20h] [xbp-60h]
  __int64 v13; // [xsp+28h] [xbp-58h]

  v4 = (*(__int64 (__fastcall **)(__int64))(*(_QWORD *)a1 + 248LL))(a1);
  v11 = v4;
  for ( i = 489219057; ; i = 409625969 )
  {
    while ( 1 )
    {
      while ( 1 )
      {
        while ( 1 )
        {
          v6 = i;
          v7 = v4;
          if ( i <= 409625968 )
            break;
          if ( i <= 1456511730 )
          {
            v4 = v2;
            i = -335294450;
            if ( v6 != 409625969 )
            {
              v4 = v7;
              i = v6;
              if ( v6 == 489219057 )
              {
                v4 = v7;
                if ( v11 )
                  i = 1797650450;
                else
                  i = -1612063777;
              }
            }
          }
          else
          {
            if ( i == 1456511731 )
            {
              (*(void (__fastcall **)(__int64, __int64))(*(_QWORD *)a1 + 184LL))(a1, v11);
              v2 = v13;
              goto LABEL_27;
            }
            if ( i == 1797650450 )
            {
              v12 = (*(__int64 (__fastcall **)(__int64, __int64, __int64 *, __int128 *))(*(_QWORD *)a1 + 264LL))(
                      a1,
                      v11,
                      &qword_F65E0,
                      &xmmword_F65F0);
              v4 = v7;
              if ( v12 )
                i = -309391330;
              else
                i = 1939784671;
            }
            else
            {
              sub_B6D0(a1);
              v4 = 0;
              i = -335294450;
            }
          }
        }
        if ( i > -309391331 )
          break;
        if ( i == -1612063777 )
        {
          sub_B6D0(a1);
          v10 = 0;
        }
        else
        {
          v10 = v4;
        }
        v4 = v7;
        i = -15867912;
      }
      if ( i != -309391330 )
        break;
      v13 = sub_BF48(a1, a2, v12);
      v4 = v7;
      if ( v13 )
        i = 1456511731;
      else
        i = -198795494;
    }
    if ( i != -198795494 )
      break;
    sub_B6D0(a1);
    v2 = 0;
LABEL_27:
    v4 = v7;
  }
  return v10;
}
