SET SERVEROUTPUT ON
--membuat sebuah procedure untuk menampilkan pola pertama
CREATE OR REPLACE PROCEDURE pattern1 AS
    i NUMBER(5); --variabel yang menampung nilai (baris)
    j NUMBER(5); --variabel yang menampung nilai (kolom)
BEGIN
    FOR i in 0..9 LOOP --melakukan proses looping nilai i dari 0 sampai 9
      FOR j in 0..9 LOOP --melakukan proses looping nilai j dari 0 sampai 9
        IF (i=j OR (i+j)=9) THEN --pengkondisian jika nilai i sama dengan j atau
            --nilai i + j = 9 maka tampilkan 'X'
            DBMS_OUTPUT.PUT(' X');
            ELSE --jika tidak memenuhi kondisi diatas maka print '*'
            DBMS_OUTPUT.PUT(' *');
        END IF;
      END LOOP;
      DBMS_OUTPUT.PUT_LINE('');
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('');
END;

--memanggil sekaligus menjalankan pattern 1 / pola pertama
EXECUTE pattern1; 

--membuat sebuah procedure untuk menampilkan pola kedua
CREATE OR REPLACE PROCEDURE pattern2 AS
    i NUMBER(5); --variabel yang menampung nilai (baris)
    j NUMBER(5); --variabel yang menampung nilai (kolom)
BEGIN
    FOR i in 1..10 LOOP --melakukan proses looping nilai i dari 1 sampai 10
      FOR j in 1..10 LOOP --melakukan proses looping nilai j dari 1 sampai 10
        IF (i <= j) THEN --kondisi hanya akan dijalankan ketika nilai i <= j
            IF (i*j < 100) THEN --kondisi hanya akan dijalankan ketika nilai i*j < 100
                --menampilkan i*j dengan format '00'
                DBMS_OUTPUT.PUT(TO_CHAR(i * j, '00'));
            ELSE --jika kondisi diatas tidak terpenuhi maka
                --akan ditampilkan i*j dengan format '000'
                DBMS_OUTPUT.PUT(TO_CHAR(i * i, '000'));
            END IF;
        END IF;
      END LOOP;
      DBMS_OUTPUT.PUT_LINE(' ');
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(' ');
END;

--memanggil sekaligus menjalankan pattern ke 2 / pola kedua
EXECUTE pattern2; 

--membuat sebuah procedure untuk menampilkan pola ketiga
CREATE OR REPLACE PROCEDURE pattern3 AS
    i NUMBER(5); --variabel yang menampung nilai (baris)
    j NUMBER(5); --variabel yang menampung nilai (kolom)
BEGIN
    FOR i in 1..10 LOOP --melakukan proses looping nilai i dari 1 sampai 10
      FOR j in 1..10 LOOP --melakukan proses looping nilai i dari 1 sampai 10
        IF (i>=j) THEN --kondisi hanya akan dijalankan jika nilai i >= j
            IF (i * j MOD 2 <> 0) THEN --kondisi jika i*j mod 2 tidak sama dengan 0
            --misalnya i*j merupakan bilangan ganjil maka tampilkan 1
            DBMS_OUTPUT.PUT(' 1');
            ELSE --jika tidak memenuhi kondisi maka tampilkan '0'
            DBMS_OUTPUT.PUT(' 0');
            END IF;
        END IF;
      END LOOP;
      DBMS_OUTPUT.PUT_LINE('');
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('');
END;

--memanggil sekaligus menjalankan pattern ke 2 / pola kedua
EXECUTE pattern3; 