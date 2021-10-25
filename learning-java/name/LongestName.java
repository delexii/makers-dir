package name;

class LongestName {
    public static void main(String[] args) {
        String longest = "";
        String[] names = { "Adam", "Clara", "Georgia", "Jane" };
        for (String name : names) {
            if (longest.length() < name.length()) {
                longest = name;
            }
        }
        System.out.printf("%s\n", longest);
    }
}