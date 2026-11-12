__int64 __fastcall sub_169A0(__int64 a1, __int64 a2)
{
  int v3; // w8
  int i; // w8
  int k; // w8
  int v6; // w8
  int v7; // w8
  int n; // w8
  int v9; // w8
  int v10; // w8
  int j; // w8
  int v12; // w8
  int m; // w8
  __int64 v15; // [xsp+8h] [xbp-B8h]
  __int64 v16; // [xsp+10h] [xbp-B0h]
  __int64 v17; // [xsp+18h] [xbp-A8h]
  int v18; // [xsp+24h] [xbp-9Ch]
  int v19; // [xsp+24h] [xbp-9Ch]
  __int64 v20; // [xsp+28h] [xbp-98h]
  int v21; // [xsp+34h] [xbp-8Ch]
  int v22; // [xsp+34h] [xbp-8Ch]
  __int64 v23; // [xsp+38h] [xbp-88h]
  int v24; // [xsp+38h] [xbp-88h]
  _QWORD *v25; // [xsp+40h] [xbp-80h]
  __int64 v26; // [xsp+48h] [xbp-78h]
  __int64 v27; // [xsp+50h] [xbp-70h]
  __int64 v28; // [xsp+58h] [xbp-68h]
  __int64 v29; // [xsp+60h] [xbp-60h]
  char v30; // [xsp+6Ch] [xbp-54h]
  char v31; // [xsp+6Ch] [xbp-54h]
  char v32; // [xsp+6Ch] [xbp-54h]
  char v33; // [xsp+6Ch] [xbp-54h]

  v25 = (_QWORD *)sub_1723C(a1, a2, &byte_F287C);
  v3 = -1649870729;
  while ( 1 )
  {
LABEL_2:
    while ( v3 > 609973433 )
    {
      if ( v3 <= 1145725840 )
      {
        if ( v3 > 864587405 )
        {
          if ( v3 == 864587406 )
          {
            v23 = 0;
            if ( v18 )
              v3 = -879916842;
            else
              v3 = -581369882;
            v16 = v17;
          }
          else if ( (int)sub_5A38() <= 25 )
          {
            v3 = -1842579516;
          }
          else
          {
            v3 = 1145725841;
          }
        }
        else if ( v3 == 609973434 )
        {
          v15 = 0;
          v3 = -1718543430;
        }
        else
        {
          v29 = sub_BF48(a1, v25[1], v28);
          if ( v29 )
            v3 = 1835262143;
          else
            v3 = 1969569507;
        }
      }
      else
      {
        if ( v3 <= 1616212960 )
        {
          if ( v3 == 1145725841 )
          {
            v26 = (*(__int64 (__fastcall **)(__int64, _QWORD, __int64 *, __int128 *))(*(_QWORD *)a1 + 264LL))(
                    a1,
                    *v25,
                    &qword_F2888,
                    &xmmword_F21A0);
            if ( v26 )
              v3 = 1305591010;
            else
              v3 = 1616212961;
          }
          else
          {
            v27 = sub_BF48(a1, v25[1], v26);
            if ( v27 )
              v3 = -412940789;
            else
              v3 = 479516452;
          }
          continue;
        }
        if ( v3 == 1616212961 )
        {
          v32 = (*(__int64 (__fastcall **)(__int64))(*(_QWORD *)a1 + 1824LL))(a1);
          v6 = -1546478364;
          while ( 1 )
          {
            while ( v6 > -360639809 )
            {
              if ( v6 == -360639808 )
              {
                v18 = 1;
                v17 = 0;
                v3 = 864587406;
                goto LABEL_2;
              }
              (*(void (__fastcall **)(__int64))(*(_QWORD *)a1 + 128LL))(a1);
              (*(void (__fastcall **)(__int64))(*(_QWORD *)a1 + 136LL))(a1);
LABEL_50:
              v6 = -360639808;
            }
            if ( v6 == -1584743821 )
              goto LABEL_50;
            if ( v32 )
              v6 = 927597058;
            else
              v6 = -1584743821;
          }
        }
        if ( v3 == 1835262143 )
        {
          v21 = 0;
          v20 = v29;
          v3 = 174166928;
          continue;
        }
        v30 = (*(__int64 (__fastcall **)(__int64))(*(_QWORD *)a1 + 1824LL))(a1);
        for ( i = -1546478364; ; i = -360639808 )
        {
          while ( i <= -360639809 )
          {
            if ( i == -1584743821 )
              goto LABEL_33;
            if ( v30 )
              i = 927597058;
            else
              i = -1584743821;
          }
          if ( i == -360639808 )
            break;
          (*(void (__fastcall **)(__int64))(*(_QWORD *)a1 + 128LL))(a1);
          (*(void (__fastcall **)(__int64))(*(_QWORD *)a1 + 136LL))(a1);
LABEL_33:
          ;
        }
        if ( v25 )
          v10 = 1464058859;
        else
          v10 = 1422605332;
        v22 = v10;
        for ( j = -1690129097; ; j = 1422605332 )
        {
          while ( j == -1690129097 )
            j = v22;
          if ( j == 1422605332 )
            break;
          (*(void (__fastcall **)(__int64, _QWORD))(*(_QWORD *)a1 + 184LL))(a1, v25[1]);
          (*(void (__fastcall **)(__int64, _QWORD))(*(_QWORD *)a1 + 184LL))(a1, *v25);
          free(v25);
        }
        v20 = v29;
        v21 = 1;
        v3 = 174166928;
      }
    }
    if ( v3 <= -581369883 )
      break;
    if ( v3 > 174166927 )
    {
      if ( v3 == 174166928 )
      {
        v23 = 0;
        if ( v21 )
          v3 = -879916842;
        else
          v3 = -581369882;
        v16 = v20;
      }
      else
      {
        v31 = (*(__int64 (__fastcall **)(__int64))(*(_QWORD *)a1 + 1824LL))(a1);
        for ( k = -1546478364; ; k = -360639808 )
        {
          while ( k <= -360639809 )
          {
            if ( k == -1584743821 )
              goto LABEL_41;
            if ( v31 )
              k = 927597058;
            else
              k = -1584743821;
          }
          if ( k == -360639808 )
            break;
          (*(void (__fastcall **)(__int64))(*(_QWORD *)a1 + 128LL))(a1);
          (*(void (__fastcall **)(__int64))(*(_QWORD *)a1 + 136LL))(a1);
LABEL_41:
          ;
        }
        if ( v25 )
          v12 = 1464058859;
        else
          v12 = 1422605332;
        v19 = v12;
        for ( m = -1690129097; ; m = 1422605332 )
        {
          while ( m == -1690129097 )
            m = v19;
          if ( m == 1422605332 )
            break;
          (*(void (__fastcall **)(__int64, _QWORD))(*(_QWORD *)a1 + 184LL))(a1, v25[1]);
          (*(void (__fastcall **)(__int64, _QWORD))(*(_QWORD *)a1 + 184LL))(a1, *v25);
          free(v25);
        }
        v17 = v27;
        v18 = 1;
        v3 = 864587406;
      }
    }
    else if ( v3 == -581369882 )
    {
      if ( v25 )
        v7 = 1464058859;
      else
        v7 = 1422605332;
      v24 = v7;
      for ( n = -1690129097; ; n = 1422605332 )
      {
        while ( n == -1690129097 )
          n = v24;
        if ( n == 1422605332 )
          break;
        (*(void (__fastcall **)(__int64, _QWORD))(*(_QWORD *)a1 + 184LL))(a1, v25[1]);
        (*(void (__fastcall **)(__int64, _QWORD))(*(_QWORD *)a1 + 184LL))(a1, *v25);
        free(v25);
      }
      v23 = v16;
      v3 = -879916842;
    }
    else
    {
      v18 = 0;
      v17 = v27;
      v3 = 864587406;
    }
  }
  if ( v3 > -1501563093 )
  {
    if ( v3 != -1501563092 )
    {
      v15 = v23;
      v3 = -1718543430;
      goto LABEL_2;
    }
    v33 = (*(__int64 (__fastcall **)(__int64))(*(_QWORD *)a1 + 1824LL))(a1);
    v9 = -1546478364;
    while ( 1 )
    {
      while ( v9 > -360639809 )
      {
        if ( v9 == -360639808 )
        {
          v21 = 1;
          v20 = 0;
          v3 = 174166928;
          goto LABEL_2;
        }
        (*(void (__fastcall **)(__int64))(*(_QWORD *)a1 + 128LL))(a1);
        (*(void (__fastcall **)(__int64))(*(_QWORD *)a1 + 136LL))(a1);
LABEL_74:
        v9 = -360639808;
      }
      if ( v9 == -1584743821 )
        goto LABEL_74;
      if ( v33 )
        v9 = 927597058;
      else
        v9 = -1584743821;
    }
  }
  if ( v3 == -1842579516 )
  {
    v28 = (*(__int64 (__fastcall **)(__int64, _QWORD, __int64 *, __int128 *))(*(_QWORD *)a1 + 264LL))(
            a1,
            *v25,
            &qword_F2890,
            &xmmword_F21A0);
    if ( v28 )
      v3 = 841399978;
    else
      v3 = -1501563092;
    goto LABEL_2;
  }
  if ( v3 == -1649870729 )
  {
    if ( v25 )
      v3 = 1023417685;
    else
      v3 = 609973434;
    goto LABEL_2;
  }
  return v15;
}
