__int64 __fastcall sub_1FA30(__int64 a1, __int64 a2)
{
  int v2; // w24
  int v3; // w27
  __int64 v5; // x2
  __int64 v6; // x3
  __int64 v7; // x4
  __int64 v8; // x5
  _BYTE *v9; // x6
  unsigned int v10; // w0
  int v11; // w9
  int v12; // w8
  unsigned int v13; // w21
  unsigned int v16; // [xsp+2Ch] [xbp-104h]
  __int64 v17; // [xsp+30h] [xbp-100h]
  char *s1; // [xsp+38h] [xbp-F8h]
  char v19[128]; // [xsp+40h] [xbp-F0h] BYREF
  _QWORD v20[4]; // [xsp+C0h] [xbp-70h] BYREF

  v20[2] = *(_QWORD *)(_ReadStatusReg(TPIDR_EL0) + 40);
  v20[0] = 0;
  v20[1] = 0;
  sub_9848((char *)v20);
  memset(v19, 0, sizeof(v19));
  v10 = sub_95F0((unsigned __int64)v20, v19, v5, v6, v7, v8, v9);
  v11 = 722616763;
  v16 = v10;
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
            v12 = v11;
            v13 = v10;
            if ( v11 > 587423917 )
              break;
            if ( v11 <= -1334123903 )
            {
              if ( v11 != -2099857255 )
              {
                v2 = 0;
                goto LABEL_2;
              }
              if ( !strcmp(s1, v19) )
                v11 = -1318297789;
              else
                v11 = -1390964075;
              v10 = v13;
            }
            else if ( v11 == -1334123902 )
            {
              v10 = 0;
              v11 = 587423918;
            }
            else if ( v11 == -1318297789 )
            {
              (*(void (__fastcall **)(__int64, __int64, char *))(*(_QWORD *)a1 + 1360LL))(a1, v17, s1);
              v2 = 1;
LABEL_2:
              v10 = v13;
              v11 = 1780433387;
            }
            else
            {
              s1 = (char *)(*(__int64 (__fastcall **)(__int64, __int64, _QWORD))(*(_QWORD *)a1 + 1352LL))(a1, v17, 0);
              v10 = v13;
              if ( s1 )
                v11 = -2099857255;
              else
                v11 = -1390964075;
            }
          }
          if ( v11 <= 800025525 )
            break;
          if ( v11 == 800025526 )
          {
            v17 = sub_43720(a1, a2);
            v10 = v13;
            if ( v17 )
              v11 = -765196054;
            else
              v11 = 1574905145;
          }
          else if ( v11 == 1574905145 )
          {
            v3 = 0;
            v11 = 594653703;
          }
          else
          {
            if ( v2 )
              v11 = 594653703;
            else
              v11 = 1574905145;
            v3 = 1;
          }
        }
        v10 = v3;
        v11 = 587423918;
      }
      while ( v12 == 594653703 );
      if ( v12 != 722616763 )
        break;
      v10 = v13;
      if ( v16 )
        v11 = 800025526;
      else
        v11 = -1334123902;
    }
    v10 = v13;
    v11 = v12;
  }
  while ( v12 != 587423918 );
  return v13;
}
