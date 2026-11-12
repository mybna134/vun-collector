bool sub_48FA4()
{
  void *v0; // x23
  int v1; // w24
  int v2; // w25
  void *v3; // x0
  int v4; // w8
  int v5; // w10
  int v6; // w9
  int v7; // w27
  void *v9; // [xsp+8h] [xbp-78h]
  __int64 (*v10)(void); // [xsp+10h] [xbp-70h]
  void *v11; // [xsp+18h] [xbp-68h]
  void *v12; // [xsp+20h] [xbp-60h]
  void *handle; // [xsp+28h] [xbp-58h]

  v3 = j__dlopen((const char *)&xmmword_F6C00, 2);
  v5 = 178152931;
  v9 = v3;
  do
  {
    while ( 1 )
    {
      do
      {
        while ( 1 )
        {
          while ( 1 )
          {
            v6 = v5;
            v7 = v4;
            if ( v5 <= 298838625 )
              break;
            if ( v5 <= 1076858840 )
            {
              if ( v5 == 298838626 )
              {
                handle = v0;
                if ( v0 )
                  v5 = 648448480;
                else
                  v5 = 1076858841;
              }
              else
              {
                v10 = (__int64 (*)(void))j__dlsym(handle, (const char *)&xmmword_F6C60);
                v1 = 0;
                if ( v10 )
                  v5 = -882716434;
                else
                  v5 = -1854695713;
                v4 = v7;
              }
            }
            else if ( v5 == 1076858841 )
            {
              v11 = j__dlopen((const char *)&xmmword_F6C80, 2);
              v4 = 0;
              if ( v11 )
                v5 = -1776015555;
              else
                v5 = -357755060;
            }
            else if ( v5 == 1819769174 )
            {
              v2 = ((__int64 (__fastcall *)(_QWORD, _QWORD))v12)(0, 0);
              v4 = v7;
              v5 = -285305345;
            }
            else
            {
              v0 = j__dlopen(aQQ13p017P073Q2, 2);
              v4 = v7;
              v5 = 298838626;
            }
          }
          if ( v5 > -357755061 )
            break;
          v4 = v1;
          v5 = -357755060;
          if ( v6 != -1854695713 )
          {
            if ( v6 == -1776015555 )
            {
              v12 = j__dlsym(v11, (const char *)&xmmword_F6CA0);
              v2 = 0;
              if ( v12 )
                v5 = 1819769174;
              else
                v5 = -285305345;
              v4 = v7;
            }
            else
            {
              v1 = v10();
              v4 = v7;
              v5 = -1854695713;
            }
          }
        }
        v4 = v2;
        v5 = -357755060;
      }
      while ( v6 == -285305345 );
      if ( v6 != 178152931 )
        break;
      v0 = v9;
      if ( v9 )
        v5 = 298838626;
      else
        v5 = 2084469115;
      v4 = v7;
    }
    v4 = v7;
    v5 = v6;
  }
  while ( v6 != -357755060 );
  return (unsigned __int8)v7 != 0;
}
