import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

public class arrayl {

    public static void main(String[] args) {
        ArrayList<Integer> l1 = new ArrayList<>();
        l1.add(2);
        l1.add(12);
        l1.add(13);
        l1.add(11);
        l1.add(22);
        l1.add(23);
        // System.out.println(l1.lastIndexOf(l1.removeIf(l1<l1.size())));
        System.out.println(l1.lastIndexOf(l1.size()));
        for (int i = 0; i <= l1.size(); i++) {
            System.out.println(l1.get(i));
            Date d = new Date();
            System.out.println(d.getHours());
            Calendar c = Calendar.getInstance();

        }
    }
}