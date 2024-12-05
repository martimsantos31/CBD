package pt.ua.cbd.lab3.ex3;

import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;

public class DateUtil {
    public static long parseTimestamp(String timestampStr) {
        ZonedDateTime zdt = ZonedDateTime.parse(timestampStr, DateTimeFormatter.ISO_ZONED_DATE_TIME);
        return zdt.toInstant().toEpochMilli();
    }
}


