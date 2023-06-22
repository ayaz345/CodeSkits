import 'dart:math';

void main() {

List randomNumbers = [];

for (int i=0; i<10; i++) {
int num = Random().nextInt(100) + 1;
randomNumbers.add(num);
}

print('Random Numbers: $randomNumbers');

}





