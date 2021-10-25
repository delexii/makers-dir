import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

class Clock {
    public static void main(String[] args) {
        LocalTime time = LocalTime.now();
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("HH:mm");
        String formattedtime = time.format(dtf);
        System.out.printf("The current time is %s", formattedtime);
    }
}

// main = point of entry, a class method;
// void = method not returning anything;
// public method = can be accessed outside of the class;
// static = class method;

// class Clock {
// public static void main(String[] args) {
// String now = DateTimeFormatter.ISO_LOCAL_TIME.format(LocalTime.now());
// System.out.printf("The time is %s", now);
// }
// }