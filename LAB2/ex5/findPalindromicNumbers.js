function findPalindromicNumbers() {
    const palindromicNumbers = [];

    db.phones.find().forEach(phone => {
        const number = phone.components.number.toString();
        const reversedNumber = number.split("").reverse().join("");

        if (number === reversedNumber) {
            palindromicNumbers.push(phone);
            print("Capicua encontrada: " + phone.display);
        }
    });

    return palindromicNumbers;
}
