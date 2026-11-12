__int64 __fastcall sub_29F1C(char *a1, char *a2, size_t a3)
{
  int v3; // w24
  __int64 v5; // x0
  __int64 v6; // x1
  int v7; // w8
  int v8; // w8
  unsigned int v9; // w0
  _BYTE *v10; // x6
  _BYTE *v11; // x6
  unsigned __int8 *v12; // x8
  _BYTE *v13; // x6
  unsigned __int8 *v14; // x8
  _BYTE *v15; // x6
  unsigned __int8 *v16; // x8
  int v18; // [xsp+Ch] [xbp-2E4h]
  unsigned int v21; // [xsp+28h] [xbp-2C8h]
  int v22; // [xsp+2Ch] [xbp-2C4h]
  int fd; // [xsp+3Ch] [xbp-2B4h]
  char *src; // [xsp+60h] [xbp-290h]
  int v25; // [xsp+6Ch] [xbp-284h]
  _BYTE v26[256]; // [xsp+70h] [xbp-280h] BYREF
  unsigned __int8 v27[256]; // [xsp+170h] [xbp-180h] BYREF
  _QWORD v28[2]; // [xsp+270h] [xbp-80h] BYREF
  _QWORD s[4]; // [xsp+280h] [xbp-70h] BYREF

  _ReadStatusReg(TPIDR_EL0);
  v5 = open(a1, 0);
  if ( a2 )
    v7 = -1233199027;
  else
    v7 = 430068612;
  v18 = v7;
  v8 = 1316498985;
  fd = v5;
  while ( 1 )
  {
    while ( 1 )
    {
      while ( 1 )
      {
        while ( v8 > 430068611 )
        {
          if ( v8 <= 1332445639 )
          {
            if ( v8 == 430068612 )
            {
              v3 = 1;
              v8 = 1332445640;
            }
            else if ( v8 == 443145324 )
            {
              v5 = close(fd);
              v8 = 1859975551;
            }
            else if ( fd >= 0 )
            {
              v8 = 2029156916;
            }
            else
            {
              v8 = -890144968;
            }
          }
          else if ( v8 > 1859975550 )
          {
            if ( v8 == 1859975551 )
            {
              v22 = v25;
              v8 = 1675192901;
            }
            else
            {
              s[0] = 0;
              s[1] = 0;
              v9 = sub_E89A4(v5, v6);
              sprintf((char *)s, &byte_F3434, v9);
              v28[0] = 0;
              v28[1] = 0;
              sprintf((char *)v28, &byte_F3434, (unsigned int)fd);
              memset(v27, 0, sizeof(v27));
              sub_6630(v27, &byte_F3438, v10, v27);
              sub_6630(v27, s, v11, v12);
              sub_6630(v27, &byte_F59B0, v13, v14);
              sub_6630(v27, v28, v15, v16);
              src = v26;
              memset(v26, 0, sizeof(v26));
              v5 = sub_E8AA4(v27, v26, 256);
              if ( (int)v5 >= 0 )
                v8 = -734275186;
              else
                v8 = -221757823;
            }
          }
          else if ( v8 == 1332445640 )
          {
            v25 = v3;
            if ( fd <= 0 )
              v8 = 1859975551;
            else
              v8 = 443145324;
          }
          else
          {
            v21 = v22;
            v8 = -1011587349;
          }
        }
        if ( v8 <= -734275187 )
          break;
        if ( v8 == -734275186 )
        {
          v5 = strnlen(src, 0x100u);
          v3 = 0;
          if ( v5 )
            v8 = -1604453658;
          else
            v8 = 1332445640;
        }
        else if ( v8 == -221757823 )
        {
          v22 = 0;
          v8 = 1675192901;
        }
        else
        {
          v8 = v18;
        }
      }
      if ( v8 > -1011587350 )
        break;
      if ( v8 == -1604453658 )
      {
        v5 = sub_73B4((unsigned __int8 *)src, (unsigned __int8 *)a1, 256, 0xA05DFAE6);
        v3 = 0;
        if ( (_DWORD)v5 )
          v8 = 259306106;
        else
          v8 = 1332445640;
      }
      else
      {
        v5 = (__int64)strncpy(a2, src, a3);
        v8 = 430068612;
      }
    }
    if ( v8 != -890144968 )
      break;
    v21 = 0;
    v8 = -1011587349;
  }
  return v21;
}
