/* artificiaI device registers */
volatile unsigned char recv;
volatile unsigned char send;

/* memory buffer */
unsigned char buf[3];

int main(void) {
  buf[0] = recv;
  buf[1] = recv;
  buf[2] = recv;
  send = ~buf[0];
  send = ~buf[1];
  send = ~buf[2];

  return 0;
}
