function findPalindromicNumbers() {
    db.phones.find().forEach(phone => {
        const number = phone.components.number.toString();
        const reversedNumber = number.split("").reverse().join("");

        if (number === reversedNumber) {
            print("Capicua encontrada: " + phone.display);
        }
    });
}
