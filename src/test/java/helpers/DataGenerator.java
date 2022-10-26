package helpers;

import com.github.javafaker.Faker;
import org.joda.time.LocalDate;

import java.util.Random;
import java.util.UUID;

public class DataGenerator {
    private static final Faker faker = new Faker();

    public static boolean validLength(String text, int min, int max) {
        int length = text.length();
        if (length >= min && length <= max) {
            return true;
        }
        return false;
    }



    public static String characters(int minimumLength, int maximumLength, boolean includeUppercase, boolean includeDigit) {
        return faker
                .lorem()
                .characters(
                        minimumLength,
                        maximumLength,
                        includeUppercase,
                        includeDigit
                );
    }

    public static String userName() {
        String name=faker.name().firstName();
        if(validLength(name,5,30)==true){
            return name;
        }
        return userName();
    }

    public static String fullName() {
        return faker
                .name()
                .fullName();
    }

    public static String email() {
        return faker
                .internet()
                .emailAddress();
    }

    public static int randomInt() {
        Random random = new Random();
        int value = random.nextInt();
        return value;
    }

    public static int randomInt(int[] value) {
        Random random = new Random();
        int pickValue = random.nextInt(value.length);
        return value[pickValue];
    }

    public static String dateAgoByYear(int year) {
        LocalDate dateYearsAgo = LocalDate.now().minusYears(year);
        return dateYearsAgo.toString();
    }

    public static String country() {
        return faker.country().countryCode2().toUpperCase();
    }

    public static String pokemonData(){
        return faker.pokemon().name();
    }

    public static void main (String[] args){
        System.out.println(pokemonData());
    }
}