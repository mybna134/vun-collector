__int64 __fastcall sub_D4250(__int64 a1, __int64 a2, __int64 a3, __int64 a4)
{
  int v6; // w8
  int v7; // w9
  __int64 v8; // x22
  void *src; // [xsp+8h] [xbp-158h]
  int v12; // [xsp+28h] [xbp-138h]
  _WORD v13[32]; // [xsp+2Ch] [xbp-134h] BYREF
  char v14; // [xsp+6Ch] [xbp-F4h]
  _QWORD v15[14]; // [xsp+70h] [xbp-F0h] BYREF
  _BYTE v16[32]; // [xsp+E0h] [xbp-80h] BYREF
  __int64 v17; // [xsp+100h] [xbp-60h]

  v17 = *(_QWORD *)(_ReadStatusReg(TPIDR_EL0) + 40);
  src = (void *)(*(__int64 (__fastcall **)(__int64, __int64, _QWORD))(*(_QWORD *)a1 + 1352LL))(a1, a3, 0);
  memset(v16, 0, sizeof(v16));
  sub_E4574(v15, v15);
  sub_E46A4(v15, 0);
  (*(void (__fastcall **)(__int64, __int64))(*(_QWORD *)a1 + 1344LL))(a1, a3);
  sub_E7894((int)v15, src);
  sub_E7CB0(v15, v16);
  v6 = 0;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
LABEL_3:
  v7 = 1527146595;
  while ( 1 )
  {
    if ( v7 == -800384214 )
    {
      sprintf((char *)&v13[v12], &aTofAjvD[4], (unsigned __int8)v16[v12]);
      v6 = v12 + 1;
      goto LABEL_3;
    }
    if ( v7 == 583354188 )
      break;
    v12 = v6;
    if ( v6 >= 32 )
      v7 = 583354188;
    else
      v7 = -800384214;
  }
  v14 = 0;
  v8 = sub_14D1C(a1);
  sub_154B8(a1, v8, &byte_F7BB4, v13);
  sub_154B8(a1, v8, &qword_F7C48, a4);
  (*(void (__fastcall **)(__int64, __int64))(*(_QWORD *)a1 + 184LL))(a1, v8);
  (*(void (__fastcall **)(__int64, __int64, void *))(*(_QWORD *)a1 + 1360LL))(a1, a3, src);
  sub_E458C(v15);
  return (*(__int64 (__fastcall **)(__int64, _WORD *))(*(_QWORD *)a1 + 1336LL))(a1, v13);
}
