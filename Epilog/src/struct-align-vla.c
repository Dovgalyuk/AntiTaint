#include <string.h>
#include <stdio.h>
#include <malloc.h>

/*
  Attributes: STRUCT ALIGN VLA
*/

#if defined(_MSC_VER)
__declspec(align(32))
#endif
struct S
{
  long long a, b, c;
}
#if defined(__GNUC__)
__attribute__((aligned(32)))
#endif
;

void fill(struct S *s)
{
  int a, b, c;
  scanf("%d %d %d", &a, &b, &c);
  s->a = a;
  s->b = b;
  s->c = c;
}

void func(void)
{
  char buf[8];
  int n, i;
  gets(buf);
  sscanf(buf, "%d", &n);
  struct S s[n];
  for (i = 0 ; i < n ; ++i) {
      fill(&s[i]);
      printf("%s %d %d %d\n", buf, (int)s[i].a, (int)s[i].b, (int)s[i].c);
  }
}

int main()
{
  func();
  return 0;
}

