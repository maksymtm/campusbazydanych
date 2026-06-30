#include <iostream>

// Funkcja 1: Oblicza średnią z tablicy
// Parametry: tablica int, rozmiar tablicy
// Zwraca: double (średnia)
double srednia(int oceny[], int n) {
    int suma = 0;
    for (int i = 0; i < n; i++) {
        suma += oceny[i];
    }
    // WAŻNE: static_cast<double> aby uniknąć dzielenia całkowitego!
    return static_cast<double>(suma) / n;
}

// Funkcja 2: Znajduje maksymalną ocenę
// Parametry: tablica int, rozmiar tablicy
// Zwraca: int (maksymalna ocena)
int maxOcena(int oceny[], int n) {
    int max = oceny[0];
    for (int i = 1; i < n; i++) {
        if (oceny[i] > max) {
            max = oceny[i];
        }
    }
    return max;
}

// Funkcja 3: Podnosi ocenę o 1 PRZEZ REFERENCJĘ
// Parametr: int& - to jest REFERENCJA, nie kopia!
// Dzięki temu zmiana w funkcji modyfikuje oryginalną zmienną
void podnies(int& ocena) {
    ocena = ocena + 1;
}

int main() {
    const int n = 5;
    int oceny[n];
    
    // Wczytanie 5 ocen
    std::cout << "Wczytaj 5 ocen:" << std::endl;
    for (int i = 0; i < n; i++) {
        std::cout << "Ocena " << (i + 1) << ": ";
        std::cin >> oceny[i];
    }
    
    std::cout << "\n=== WYNIKI ===" << std::endl;
    
    // Wywołanie funkcji srednia()
    double sr = srednia(oceny, n);
    std::cout << "Średnia ocen: " << sr << std::endl;
    
    // Wywołanie funkcji maxOcena()
    int max = maxOcena(oceny, n);
    std::cout << "Maksymalna ocena: " << max << std::endl;
    
    // Demonstracja różnicy: WARTOŚĆ vs REFERENCJA
    std::cout << "\n=== DEMONSTRACJA: WARTOŚĆ vs REFERENCJA ===" << std::endl;
    
    int ocena_wartosc = 3;
    int ocena_ref = 3;
    
    std::cout << "Przed zmianą:" << std::endl;
    std::cout << "  ocena_wartosc = " << ocena_wartosc << std::endl;
    std::cout << "  ocena_ref = " << ocena_ref << std::endl;
    
    // Jeśli byśmy przekazali przez wartość (gdyby podnies miała int zamiast int&):
    // Funkcja byłaby: void podnies(int ocena) { ocena = ocena + 1; }
    // Zmieniłaby KOPIĘ, nie oryginał!
    std::cout << "\nPrzekażemy obie przez funkcję podnies()..." << std::endl;
    
    // W naszym przypadku: podnies() przyjmuje int& (referencję)
    // Modyfikuje ORYGINALNĄ zmienną!
    podnies(ocena_ref);
    
    std::cout << "Po zmiannie (wywoływanie podnies):" << std::endl;
    std::cout << "  ocena_ref = " << ocena_ref << " (ZMIENIONA - bo przez referencję int&)" << std::endl;
    
    // Symulacja przez wartość (dla porównania):
    std::cout << "\nJeśli byśmy użyli WARTOŚCI (int zamiast int&):" << std::endl;
    std::cout << "  ocena_wartosc pozostałaby 3 (NIEZMIENIONA - bo kopiya)" << std::endl;
    
    // Zmiana ostatniej oceny w tablicy dla demonstracji
    std::cout << "\n=== ZMIANA OCENY W TABLICY PRZEZ REFERENCJĘ ===" << std::endl;
    std::cout << "Ostatnia ocena przed: " << oceny[n-1] << std::endl;
    podnies(oceny[n-1]);  // Przekazujemy element tablicy przez referencję
    std::cout << "Ostatnia ocena po podnies(): " << oceny[n-1] << " (zmieniona!)" << std::endl;
    
    return 0;
}
