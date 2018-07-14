import java.util.Random;

class CharacterGen {
   Random random = new Random();
   int[] chars = new int[8];  //0STR, 1CON, 2DEX, 3APP, 4POW, 5SIZ, 6INT, 7EDU
   String[] charsLabel = new String[8];
   int luck;
   public CharacterGen() {
      charsLabel[0] = "STR";
      charsLabel[1] = "CON";
      charsLabel[2] = "DEX";
      charsLabel[3] = "APP";
      charsLabel[4] = "POW";
      charsLabel[5] = "SIZ";
      charsLabel[6] = "INT";
      charsLabel[7] = "EDU";
   }
   private void characteristics(int age){
      int i = 0;
      int min = 100;
      int minIndex = 0;
      while(i < 5) {
         chars[i] = 5 * (3 + random.nextInt(6) + random.nextInt(6) + random.nextInt(6));
         if(chars[i] < min) {
            min = chars[i];
            minIndex = i;
         }
         i ++;
      }
      while(i < 8) {
         chars[i] = 5 * (8 + random.nextInt(6) + random.nextInt(6));
         if(chars[i] < min) {
            min = chars[i];
            minIndex = i;
         }
         i ++;
      }
      if(minIndex < 5) {
         min = 5 * (3 + random.nextInt(6) + random.nextInt(6) + random.nextInt(6));
         if(chars[minIndex] < min) {
            chars[minIndex] = min;
         }
      }
      else {
         min = 5 * (8 + random.nextInt(6) + random.nextInt(6));
         if(chars[minIndex] < min) {
            chars[minIndex] = min;
         }
      }
      luck = 5 * (3 + random.nextInt(6) + random.nextInt(6) + random.nextInt(6));
      if(age < 20) {
         int c = random.nextInt(2);
         if(c == 0) {
            chars[0] = chars[0] - 5;
         }
         else {
            chars[5] = chars[5] - 5;
         }
         chars[7] = chars[7] - 5;
         min = 5 * (3 + random.nextInt(6) + random.nextInt(6) + random.nextInt(6));
         if(luck < min) {
            luck = min;
         }
      }
      else if(age < 40) {
         if((random.nextInt(100) + 1) > chars[7]) {
            chars[7] += (random.nextInt(10) + 1);
         }
      }
      else if(age < 50) {
         int remove = 5;
         int r = random.nextInt(remove) + 1;
         chars[0] = chars[0] - r;
         remove = remove - r;
         r = random.nextInt(remove) + 1;
         chars[1] = chars[1] - r;
         remove = remove - r;
         chars[2] = chars[2] - remove;
         chars[3] = chars[3] - 5;
         if((random.nextInt(100) + 1) > chars[7]) {
            chars[7] += (random.nextInt(10) + 1);
         }
         if((random.nextInt(100) + 1) > chars[7]) {
            chars[7] += (random.nextInt(10) + 1);
         }
      }
      else if(age < 60) {
         int remove = 10;
         int r = random.nextInt(remove) + 1;
         chars[0] = chars[0] - r;
         remove = remove - r;
         r = random.nextInt(remove) + 1;
         chars[1] = chars[1] - r;
         remove = remove - r;
         chars[2] = chars[2] - remove;
         chars[3] = chars[3] - 10;
         if((random.nextInt(100) + 1) > chars[7]) {
            chars[7] += (random.nextInt(10) + 1);
         }
         if((random.nextInt(100) + 1) > chars[7]) {
            chars[7] += (random.nextInt(10) + 1);
         }
         if((random.nextInt(100) + 1) > chars[7]) {
            chars[7] += (random.nextInt(10) + 1);
         }
      }
      else if(age < 70) {
         int remove = 20;
         int r = random.nextInt(remove) + 1;
         chars[0] = chars[0] - r;
         remove = remove - r;
         r = random.nextInt(remove) + 1;
         chars[1] = chars[1] - r;
         remove = remove - r;
         chars[2] = chars[2] - remove;
         chars[3] = chars[3] - 15;
         if((random.nextInt(100) + 1) > chars[7]) {
            chars[7] += (random.nextInt(10) + 1);
         }
         if((random.nextInt(100) + 1) > chars[7]) {
            chars[7] += (random.nextInt(10) + 1);
         }
         if((random.nextInt(100) + 1) > chars[7]) {
            chars[7] += (random.nextInt(10) + 1);
         }
         if((random.nextInt(100) + 1) > chars[7]) {
            chars[7] += (random.nextInt(10) + 1);
         }
      }
      else if(age < 80) {
         int remove = 40;
         int r = random.nextInt(remove) + 1;
         chars[0] = chars[0] - r;
         remove = remove - r;
         r = random.nextInt(remove) + 1;
         chars[1] = chars[1] - r;
         remove = remove - r;
         chars[2] = chars[2] - remove;
         chars[3] = chars[3] - 20;
         if((random.nextInt(100) + 1) > chars[7]) {
            chars[7] += (random.nextInt(10) + 1);
         }
         if((random.nextInt(100) + 1) > chars[7]) {
            chars[7] += (random.nextInt(10) + 1);
         }
         if((random.nextInt(100) + 1) > chars[7]) {
            chars[7] += (random.nextInt(10) + 1);
         }
         if((random.nextInt(100) + 1) > chars[7]) {
            chars[7] += (random.nextInt(10) + 1);
         }
      }
      else{
         int remove = 80;
         int r = random.nextInt(remove) + 1;
         chars[0] = chars[0] - r;
         remove = remove - r;
         r = random.nextInt(remove) + 1;
         chars[1] = chars[1] - r;
         remove = remove - r;
         chars[2] = chars[2] - remove;
         chars[3] = chars[3] - 25;
         if((random.nextInt(100) + 1) > chars[7]) {
            chars[7] += (random.nextInt(10) + 1);
         }
         if((random.nextInt(100) + 1) > chars[7]) {
            chars[7] += (random.nextInt(10) + 1);
         }
         if((random.nextInt(100) + 1) > chars[7]) {
            chars[7] += (random.nextInt(10) + 1);
         }
         if((random.nextInt(100) + 1) > chars[7]) {
            chars[7] += (random.nextInt(10) + 1);
         }
      }
   }
   private void generate() {
      characteristics(30);
      for(int i = 0; i < 8; i ++) {
         System.out.println(charsLabel[i] + ": " + chars[i]);
      }
      System.out.println("LUCK: " + luck);
   }
}
