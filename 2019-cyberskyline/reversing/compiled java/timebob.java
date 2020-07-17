Compiled from "Timebomb.java"
public class Timebomb {
  public Timebomb();
    Code:
       0: aload_0
       1: invokespecial #1                  // Method java/lang/Object."<init>":()V
       4: return

  public static void main(java.lang.String[]);
    Code:
       0: invokestatic  #2                  // Method java/lang/System.currentTimeMillis:()J
       3: l2d
       4: dstore_1
       5: dload_1
       6: ldc2_w        #3                  // double 1.65806352E12d
       9: dcmpl
      10: ifle          28
      13: getstatic     #5                  // Field java/lang/System.out:Ljava/io/PrintStream;
      16: ldc           #6                  // String Boom
      18: invokevirtual #7                  // Method java/io/PrintStream.println:(Ljava/lang/String;)V
      21: iconst_0
      22: invokestatic  #8                  // Method java/lang/System.exit:(I)V
      25: goto          41
      28: getstatic     #5                  // Field java/lang/System.out:Ljava/io/PrintStream;
      31: ldc           #9                  // String It isn\'t time yet
      33: invokevirtual #7                  // Method java/io/PrintStream.println:(Ljava/lang/String;)V
      36: bipush        10
      38: invokestatic  #8                  // Method java/lang/System.exit:(I)V
      41: return
}
