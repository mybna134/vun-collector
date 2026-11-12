__int64 __fastcall sub_9CF0(__int64 a1, char *file, __int64 a3)
{
  __int64 result; // x0
  int v4; // w8
  int v5; // w8
  int v6; // w9
  char *v7; // x10
  int v8; // w11
  __int64 v9; // [xsp+0h] [xbp-170h]
  int v12; // [xsp+30h] [xbp-140h]
  int v13; // [xsp+34h] [xbp-13Ch]
  char *v14; // [xsp+38h] [xbp-138h]
  _QWORD v15[10]; // [xsp+40h] [xbp-130h] BYREF
  __int128 v16; // [xsp+90h] [xbp-E0h]
  __int128 v17; // [xsp+A0h] [xbp-D0h]
  __int128 v18; // [xsp+B0h] [xbp-C0h]
  char s[16]; // [xsp+C0h] [xbp-B0h] BYREF
  __int128 v20; // [xsp+D0h] [xbp-A0h]
  __int128 v21; // [xsp+E0h] [xbp-90h]
  __int128 v22; // [xsp+F0h] [xbp-80h]

  _ReadStatusReg(TPIDR_EL0);
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  memset(v15, 0, sizeof(v15));
  result = stat(file, (struct stat *)v15);
  v4 = 1581681529;
  v12 = result;
  while ( 1 )
  {
    while ( v4 == 836436304 )
    {
      v9 = v15[1];
      v21 = 0u;
      v22 = 0u;
      *(_OWORD *)s = 0u;
      v20 = 0u;
      sprintf(s, &byte_F209C, 1000000000LL * *((_QWORD *)&v16 + 1) + (_QWORD)v17);
      v8 = 1997992874;
      while ( 1 )
      {
        while ( v8 > 1742559648 )
        {
          if ( v8 == 1742559649 )
          {
            v6 = v13 + 1;
            v7 = v14 + 1;
            v8 = 1761924605;
          }
          else if ( v8 == 1997992874 )
          {
            v8 = 838195105;
          }
          else
          {
            v13 = v6;
            v14 = v7;
            if ( *v7 )
              v8 = 1742559649;
            else
              v8 = 1618827785;
          }
        }
        if ( v8 == -1551057608 )
          break;
        if ( v8 == 838195105 )
        {
          v6 = 0;
          v8 = 1761924605;
          v7 = s;
        }
        else
        {
          v5 = v13;
          v8 = -1551057608;
        }
      }
      sprintf(&s[v5], &byte_F20AC, v9);
      result = sub_13C74(a1, a3, s);
      v4 = 1273693657;
    }
    if ( v4 == 1273693657 )
      break;
    if ( v12 )
      v4 = 1273693657;
    else
      v4 = 836436304;
  }
  return result;
}
