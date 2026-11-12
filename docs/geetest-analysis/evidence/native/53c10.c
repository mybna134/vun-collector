__int64 __fastcall sub_53C10(__int64 a1, __int64 a2, __int64 a3, __int64 a4)
{
  void *v5; // x20
  void *v6; // x21
  __int64 v7; // x19

  v5 = (void *)sub_51A4C(a1, a3, a4);
  sub_D138(a1);
  v6 = (void *)sub_50AC4(v5);
  v7 = (*(__int64 (__fastcall **)(__int64, void *))(*(_QWORD *)a1 + 1336LL))(a1, v6);
  free(v5);
  free(v6);
  return v7;
}
