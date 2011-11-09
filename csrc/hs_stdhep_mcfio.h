#if defined(c_plusplus) || defined(__cplusplus)
extern "C" {
#endif


int hsStdHepXdrReadInit(char *filename, int ntries, int ist);
int hsStdHepXdrReadOpen(char *filename, int ntries, int ist);
int hsStdHepXdrRead(int *ilbl, int ist);
int hsStdHepXdrReadMulti(int *ilbl, int ist);
int hsStdHepXdrWriteInit(char *filename, char *title, int ntries, int ist);
int hsStdHepXdrWriteOpen(char *filename, char *title, int ntries, int ist);
int hsStdHepXdrWrite(int ilbl, int ist);
int hsStdHepXdrWriteCM(int ilbl, int ist);
int hsStdHepXdrWriteEvent(int ilbl, int ist);
int hsStdHepXdrWriteEventLH(int ilbl, int ist);
int hsStdHepXdrWriteEventEUP(int ilbl, int ist);
int hsStdHepXdrWriteEventRUP(int ilbl, int ist);
void hsStdHepXdrEnd(int ist);
void hsStdHepPrintHeader( );

#if defined(c_plusplus) || defined(__cplusplus)
}
#endif

