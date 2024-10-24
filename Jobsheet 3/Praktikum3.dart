void main() {
  for (int index = 10; index < 27; index++) {
    if (index == 21) break; // Berhenti jika index adalah 21
    else if (index > 1 && index < 7) continue;

    print(index);
  }
}
