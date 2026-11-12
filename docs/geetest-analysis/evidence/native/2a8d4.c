__int64 __fastcall sub_2A8D4(__int64 a1)
{
  __int64 result; // x0
  int v3; // w9
  int v4; // w8
  __int64 v5; // x0
  int v6; // [xsp+28h] [xbp-208h]
  int v7; // [xsp+2Ch] [xbp-204h]
  int v8; // [xsp+30h] [xbp-200h] BYREF
  int v9; // [xsp+34h] [xbp-1FCh] BYREF
  struct utsname name; // [xsp+38h] [xbp-1F8h] BYREF
  __int64 v11; // [xsp+1C0h] [xbp-70h]

  v11 = *(_QWORD *)(_ReadStatusReg(TPIDR_EL0) + 40);
  uname(&name);
  result = sscanf(name.release, &byte_F5A74, &v9, &v8);
  v3 = 1023873556;
  v6 = result;
  while ( 1 )
  {
    while ( 1 )
    {
      while ( 1 )
      {
        v4 = v3;
        if ( v3 <= -313656190 )
          break;
        if ( v3 > 1553218012 )
        {
          v3 = -657447612;
          if ( v4 != 1553218013 )
          {
            if ( ((v7 == 3) & ~((v7 == 3) ^ (v8 < 5))) != 0 )
              v3 = -1111962563;
            else
              v3 = -1888881335;
          }
        }
        else if ( v3 == -313656189 )
        {
          v7 = v9;
          if ( v9 >= 3 )
            v3 = 1659829146;
          else
            v3 = -1111962563;
        }
        else if ( v6 == 2 )
        {
          v3 = -313656189;
        }
        else
        {
          v3 = -432820853;
        }
      }
      if ( v3 > -657447613 )
        break;
      if ( v3 == -1888881335 )
      {
        prctl(39, 0, 0, 0, 0);
        v5 = a1;
        goto LABEL_2;
      }
      result = sub_BAB9C(a1, (__int64)&byte_F5A7C);
      v3 = -657447612;
    }
    if ( v3 != -432820853 )
      return result;
    v5 = a1;
LABEL_2:
    result = sub_BAB9C(v5, (__int64)&byte_F5A7C);
    v3 = 1553218013;
  }
}
