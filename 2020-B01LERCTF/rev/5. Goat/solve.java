import java.util.Random;

public class solve {
   public static void main(String[] args) {

      int length = 22;

      Random rng = new Random();
      rng.setSeed(431289L);
      int[] keys = new int[length];

      for (int var8 = 0; var8 < length; ++var8) {
         keys[var8] = rng.nextInt(var8 + 1);
      }

      // unxor the encrypted value
      int[] tmp = new int[length];
      int[] var14 = new int[] { 97, 122, 54, 50, 93, 66, 99, 117, 75, 51, 101, 78, 104, 119, 90, 53, 94, 36, 102, 84,
            40, 69 };
      for (int var9 = 0; var9 < keys.length; ++var9) {
         tmp[var9] = var14[var9] ^ keys[var9];
      }

      // unmangle
      int[] mapping = new int[] { 19, 17, 15, 6, 9, 4, 18, 8, 16, 13, 21, 11, 7, 0, 12, 3, 5, 2, 20, 14, 10, 1 };
      char[] output_arr = new char[length];
      for (int var6 = length - 1; var6 >= 0; --var6) {
         output_arr[mapping[var6]] = (char) tmp[var6];
      }

      // reverse and conv to char
      for (int i = 0; i < length / 2; ++i) {
         char var5 = output_arr[length - i - 1];
         output_arr[length - i - 1] = output_arr[i];
         output_arr[i] = var5;
      }
      String output = new String(output_arr);
      System.out.println(output);

   }

}
