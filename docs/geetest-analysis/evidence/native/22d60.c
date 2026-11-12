bool __fastcall sub_22D60(__int64 a1)
{
  int v2; // w8
  _BOOL4 v4; // [xsp+8h] [xbp-68h]
  char v5; // [xsp+8h] [xbp-68h]
  _BOOL4 v6; // [xsp+Ch] [xbp-64h]
  __int64 v7; // [xsp+10h] [xbp-60h]
  __int64 v8; // [xsp+18h] [xbp-58h]

  v7 = (*(__int64 (__fastcall **)(__int64, __int128 *))(*(_QWORD *)a1 + 48LL))(a1, &xmmword_F2F90);
  v2 = -741235056;
  while ( 1 )
  {
    while ( 1 )
    {
      while ( v2 > -804706329 )
      {
        if ( v2 > 13759716 )
        {
          if ( v2 == 13759717 )
          {
            v2 = -1242652163;
            v6 = v4;
          }
          else
          {
            v5 = sub_17C70(a1, v7, v8);
            sub_B6D0(a1);
            (*(void (__fastcall **)(__int64, __int64))(*(_QWORD *)a1 + 184LL))(a1, v7);
            v4 = v5 != 0;
            v2 = 13759717;
          }
        }
        else if ( v2 == -804706328 )
        {
          sub_B6D0(a1);
          v4 = 0;
          v2 = 13759717;
        }
        else if ( v7 )
        {
          v2 = -1039338705;
        }
        else
        {
          v2 = -1381998870;
        }
      }
      if ( v2 != -1381998870 )
        break;
      sub_B6D0(a1);
      v6 = 0;
      v2 = -1242652163;
    }
    if ( v2 == -1242652163 )
      break;
    v8 = (*(__int64 (__fastcall **)(__int64, __int64, __int128 *, char *))(*(_QWORD *)a1 + 904LL))(
           a1,
           v7,
           &xmmword_F2FB0,
           &byte_F2FC4);
    if ( v8 )
      v2 = 1993063280;
    else
      v2 = -804706328;
  }
  return v6;
}
