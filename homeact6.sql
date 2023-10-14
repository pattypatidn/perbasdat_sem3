-- CREATED BY   : Patrik Kurniawan Saputra
-- DATE         : 14-OCT-2023
-- TITLE        : Home Activity 6

-- CREATING TABLE --
create table barang (
    id_barang char(5) not null primary key,
    nama_brg varchar(50),
    stok int,
    satuan varchar(10),
    jenis varchar(30)
);
create table supplier (
    id_supplier char(5) not null primary key,
    nama_supp varchar(50),
    jenis_brg varchar(30),
    alamat varchar(150),
    telp varchar(13)
);
create table karyawan (
    id_karyawan char(5) not null primary key,
    nama_kry varchar(100),
    posisi varchar(50),
    alamat varchar(100),
    telp varchar(13)
);
create table notaBeli (
    kd_notaBeli int not null primary key,
    id_karyawan char(5),
    id_supplier char(5),
    tgl_beli date,
    mtd_bayar varchar(30)
);
create table itemBeli (
    kd_itemBeli int not null primary key,
    kd_notaBeli int,
    id_barang char(5),
    qty int,
    harga int
);

-- MAKE RELATION BETWEEN NEEDED TABLE --
alter table notaBeli
add foreign key (id_karyawan) references karyawan(id_karyawan);

alter table notaBeli
add foreign key (id_supplier) references supplier(id_supplier);

alter table itemBeli
add foreign key (kd_notaBeli) references notaBeli(kd_notaBeli);

alter table itemBeli
add foreign key (id_barang) references barang(id_barang);

-- CREATE SEQUENCE --
create sequence seq_notaBeli
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10;

create sequence seq_itemBeli
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10;

-- INSERT BARANG --
insert into barang (id_barang, nama_brg, stok, satuan, jenis) values ('BRG01','Cheetos Keju',20,'pcs','Makanan Ringan');
insert into barang (id_barang, nama_brg, stok, satuan, jenis) values ('BRG02','Lays Seaweed',20,'pcs','Makanan Ringan');
insert into barang (id_barang, nama_brg, stok, satuan, jenis) values ('BRG03','Silverqueen Almond',20,'pcs','Makanan Ringan');
insert into barang (id_barang, nama_brg, stok, satuan, jenis) values ('BRG04','Chitato Ayam Panggang',20,'pcs','Makanan Ringan');
insert into barang (id_barang, nama_brg, stok, satuan, jenis) values ('BRG05','Taro Roasted Corn',20,'pcs','Makanan Ringan');
insert into barang (id_barang, nama_brg, stok, satuan, jenis) values ('BRG06','Qtela Sapi Panggang',20,'pcs','Makanan Ringan');
insert into barang (id_barang, nama_brg, stok, satuan, jenis) values ('BRG07','Potabee Keju',20,'pcs','Makanan Ringan');
insert into barang (id_barang, nama_brg, stok, satuan, jenis) values ('BRG08','Chiki Balls Cheese',20,'pcs','Makanan Ringan');
insert into barang (id_barang, nama_brg, stok, satuan, jenis) values ('BRG09','Tricks Cheese Cracker',20,'pcs','Makanan Ringan');
insert into barang (id_barang, nama_brg, stok, satuan, jenis) values ('BRG10','Piatos Ayam Bakar',20,'pcs','Makanan Ringan');
insert into barang values ('BRG11','Happy Tos Roasted Corn',20,'pcs','Makanan Ringan');
insert into barang values ('BRG12','Pringles Spicy Hot',20,'pcs','Makanan Ringan');
insert into barang values ('BRG13','Kusuka Keju Bakar',20,'pcs','Makanan Ringan');
insert into barang values ('BRG14','Doritos Ayam Keju',20,'pcs','Makanan Ringan');
insert into barang values ('BRG15','Teh Pucuk Harum',20,'botol','Minuman Kemasan');
insert into barang values ('BRG16','Teh Botol Sosro',20,'botol','Minuman Kemasan');
insert into barang values ('BRG17','Teh Gelas',20,'botol','Minuman Kemasan');
insert into barang values ('BRG18','Frestea Apple',20,'botol','Minuman Kemasan');
insert into barang values ('BRG19','Buavita Jambu',20,'botol','Minuman Kemasan');
insert into barang values ('BRG20','Floridina Jeruk Afrika',20,'botol','Minuman Kemasan');

--INSERT KARYAWAN--
insert into karyawan (id_karyawan, nama_kry, posisi, alamat, telp) values ('KRY01','Ashanti Rahma','Kasir','Jl. Doni Suka No.1','08974323452');
insert into karyawan (id_karyawan, nama_kry, posisi, alamat, telp) values ('KRY02','Boby Simamora','Kasir','Jl. Gajah Duduk No.1','08823974352');
insert into karyawan (id_karyawan, nama_kry, posisi, alamat, telp) values ('KRY03','Clairine Clay','Kasir','Jl. Munggah Mudun','08193928423');
insert into karyawan (id_karyawan, nama_kry, posisi, alamat, telp) values ('KRY04','Doni Saragih','Helper','Jl. Harihara No.32','08234235234');
insert into karyawan (id_karyawan, nama_kry, posisi, alamat, telp) values ('KRY05','Ella Nur','Helper','Jl. Gabah No.23','08723742352');
insert into karyawan (id_karyawan, nama_kry, posisi, alamat, telp) values ('KRY06','Fikri Setya','Helper','Jl. Kenari 23','08234234533');
insert into karyawan (id_karyawan, nama_kry, posisi, alamat, telp) values ('KRY07','Galih Bord','Admin','Jl. Sukamar No. 12','08723634732');
insert into karyawan (id_karyawan, nama_kry, posisi, alamat, telp) values ('KRY08','Halim Sukma','Admin','Jl. Grogol No.23','08972342315');
insert into karyawan (id_karyawan, nama_kry, posisi, alamat, telp) values ('KRY09','Ilham Rama','Admin','Jl. Taman Hati No.12','08723423135');
insert into karyawan (id_karyawan, nama_kry, posisi, alamat, telp) values ('KRY10','Jayden James','Sales','Jl. Sukatak No. 94','08192384859');
insert into karyawan values ('KRY11','Karina Nasri','Sales','Jl. Tanah Bawah No.1','08358549843');
insert into karyawan values ('KRY12','Layla Masra','Sales','Jl. Yonta No.94','08273835823');
insert into karyawan values ('KRY13','Mario Hadi','Sales','Jl. Kojo No.1','08723494909');
insert into karyawan values ('KRY14','Nina Syana','Operator','Jl. Kaliboyo No.45','08734594990');
insert into karyawan values ('KRY15','Otniel Jason','Operator','Jl. Mirimiri No.23','08938492931');
insert into karyawan values ('KRY16','Putra Mansyur','Operator','Jl. Soka No.23','08239859352');
insert into karyawan values ('KRY17','Rissa Putri','Manager','Jl. Kerja No.45','08745839482');
insert into karyawan values ('KRY18','Santi Erna','Manager','Jl. Jalan No.12','08238593495');
insert into karyawan values ('KRY19','Tung Feyho','Manager','Jl. Hong No.46','08738585949');
insert into karyawan values ('KRY20','Umar Mahadi','Manager','Jl. Sloki No.89','08273859393');

--INSERT SUPPLIER--
insert into supplier (id_supplier, nama_supp, jenis_brg, alamat, telp) values ('SUP01','Adi Jaya','Makanan Ringan','Jl. Adi Suka No.1','08974321233');
insert into supplier (id_supplier, nama_supp, jenis_brg, alamat, telp) values ('SUP02','Bahagia Selalu','Makanan Ringan','Jl. Happy Lala No.2','08345343453');
insert into supplier (id_supplier, nama_supp, jenis_brg, alamat, telp) values ('SUP03','Ceria Makmur','Makanan Ringan','Jl. Sunyi No.3','08394845924');
insert into supplier (id_supplier, nama_supp, jenis_brg, alamat, telp) values ('SUP04','Damar Mulia','Makanan Ringan','Jl. Api Panas','08974321233');
insert into supplier (id_supplier, nama_supp, jenis_brg, alamat, telp) values ('SUP05','Enggal Jawa','Makanan Ringan','Jl. Kamu Jawa No.1','08934352231');
insert into supplier (id_supplier, nama_supp, jenis_brg, alamat, telp) values ('SUP06','Fruti Naknan','Minuman Kemasan','Jl. Botolan No.3','08799499993');
insert into supplier (id_supplier, nama_supp, jenis_brg, alamat, telp) values ('SUP07','Gajah Hore','Makanan Ringan','Jl. Belalai Panjang','08728939482');
insert into supplier (id_supplier, nama_supp, jenis_brg, alamat, telp) values ('SUP08','Horahore','Makanan Ringan','Jl. Ceria No.5','08273874872');
insert into supplier (id_supplier, nama_supp, jenis_brg, alamat, telp) values ('SUP09','Inti Makmur','Makanan Ringan','Jl. Industri No.12','08278374344');
insert into supplier (id_supplier, nama_supp, jenis_brg, alamat, telp) values ('SUP10','Jaya Abadi','Makanan Ringan','Jl. Imortal No.99','08927487352');
insert into supplier values ('SUP11','Konimek','Makanan Ringan','Jl. Haru N0.69','08274387332');
insert into supplier values ('SUP12','Lompston','Makanan Ringan','Jl. Keren Biasa','08526372364');
insert into supplier values ('SUP13','Mangga Dua','Makanan Ringan','Jl. Pohon Besar','08723441359');
insert into supplier values ('SUP14','Nassimura','Makanan Ringan','Jl. Padi Kering','08739493821');
insert into supplier values ('SUP15','Omoshiro','Makanan Ringan','Jl. Jepang No.45','08934244219');
insert into supplier values ('SUP16','Potahonka','Makanan Ringan','Jl. Kenta Gurih','08739485792');
insert into supplier values ('SUP17','Qoryoto','Minuman Kemasan','Jl. Karya Dua No.1','08934634624');
insert into supplier values ('SUP18','Restu Mandiri','Minuman Kemasan','Jl. Adi Suka No.1','08934522345');
insert into supplier values ('SUP19','Serat Haus','Minuman Kemasan','Jl. Glegek No.42','08123355332');
insert into supplier values ('SUP20','Tunggal Jaya','Minuman Kemasan','Jl. Keladi No. 12','08273413534');

--INSERT NOTABELI--
insert into notaBeli (kd_notaBeli, id_karyawan, id_supplier, tgl_beli, mtd_bayar) values (seq_notaBeli.nextval, 'KRY07', 'SUP01', '11-JUN-2023', 'Debit BCA');
insert into notaBeli (kd_notaBeli, id_karyawan, id_supplier, tgl_beli, mtd_bayar) values (seq_notaBeli.nextval, 'KRY08', 'SUP01', '12-JUN-2023', 'Debit BNI');
insert into notaBeli (kd_notaBeli, id_karyawan, id_supplier, tgl_beli, mtd_bayar) values (seq_notaBeli.nextval, 'KRY09', 'SUP02', '22-JUN-2023', 'Kredit BNI');
insert into notaBeli (kd_notaBeli, id_karyawan, id_supplier, tgl_beli, mtd_bayar) values (seq_notaBeli.nextval, 'KRY07', 'SUP02', '25-JUN-2023', 'Kredit BCA');
insert into notaBeli (kd_notaBeli, id_karyawan, id_supplier, tgl_beli, mtd_bayar) values (seq_notaBeli.nextval, 'KRY07', 'SUP03', '03-JUL-2023', 'Debit BCA');
insert into notaBeli (kd_notaBeli, id_karyawan, id_supplier, tgl_beli, mtd_bayar) values (seq_notaBeli.nextval, 'KRY08', 'SUP03', '11-JUL-2023', 'Debit BNI');
insert into notaBeli (kd_notaBeli, id_karyawan, id_supplier, tgl_beli, mtd_bayar) values (seq_notaBeli.nextval, 'KRY09', 'SUP04', '14-JUL-2023', 'Kredit BNI');
insert into notaBeli (kd_notaBeli, id_karyawan, id_supplier, tgl_beli, mtd_bayar) values (seq_notaBeli.nextval, 'KRY09', 'SUP04', '22-JUL-2023', 'Kredit BNI');
insert into notaBeli (kd_notaBeli, id_karyawan, id_supplier, tgl_beli, mtd_bayar) values (seq_notaBeli.nextval, 'KRY08', 'SUP05', '10-AUG-2023', 'Debit BCA');
insert into notaBeli (kd_notaBeli, id_karyawan, id_supplier, tgl_beli, mtd_bayar) values (seq_notaBeli.nextval, 'KRY07', 'SUP05', '12-AUG-2023', 'Debit BCA');
insert into notaBeli values (seq_notaBeli.nextval, 'KRY08', 'SUP06', '22-AUG-2023', 'Debit BCA');
insert into notaBeli values (seq_notaBeli.nextval, 'KRY08', 'SUP06', '24-AUG-2023', 'Debit BCA');
insert into notaBeli values (seq_notaBeli.nextval, 'KRY09', 'SUP07', '10-SEP-2023', 'Debit BNI');
insert into notaBeli values (seq_notaBeli.nextval, 'KRY09', 'SUP07', '15-SEP-2023', 'Debit BNI');
insert into notaBeli values (seq_notaBeli.nextval, 'KRY07', 'SUP08', '21-SEP-2023', 'Kredit BNI');
insert into notaBeli values (seq_notaBeli.nextval, 'KRY07', 'SUP08', '11-OCT-2023', 'Debit BNI');
insert into notaBeli values (seq_notaBeli.nextval, 'KRY07', 'SUP09', '19-OCT-2023', 'Debit BCA');
insert into notaBeli values (seq_notaBeli.nextval, 'KRY08', 'SUP09', '23-OCT-2023', 'Debit BCA');
insert into notaBeli values (seq_notaBeli.nextval, 'KRY08', 'SUP11', '10-DEC-2023', 'Kredit BNI');
insert into notaBeli values (seq_notaBeli.nextval, 'KRY09', 'SUP11', '20-DEC-2023', 'Debit BCA');

--INSERT ITEMBELI--
insert into itemBeli (kd_itemBeli, kd_notaBeli, id_barang, qty, harga) values (seq_itemBeli.nextval, 1, 'BRG01', 100, 12500);
insert into itemBeli (kd_itemBeli, kd_notaBeli, id_barang, qty, harga) values (seq_itemBeli.nextval, 2, 'BRG02', 100, 12500);
insert into itemBeli (kd_itemBeli, kd_notaBeli, id_barang, qty, harga) values (seq_itemBeli.nextval, 3, 'BRG02', 100, 10500);
insert into itemBeli (kd_itemBeli, kd_notaBeli, id_barang, qty, harga) values (seq_itemBeli.nextval, 4, 'BRG03', 100, 10500);
insert into itemBeli (kd_itemBeli, kd_notaBeli, id_barang, qty, harga) values (seq_itemBeli.nextval, 5, 'BRG03', 100, 21500);
insert into itemBeli (kd_itemBeli, kd_notaBeli, id_barang, qty, harga) values (seq_itemBeli.nextval, 6, 'BRG04', 100, 21500);
insert into itemBeli (kd_itemBeli, kd_notaBeli, id_barang, qty, harga) values (seq_itemBeli.nextval, 7, 'BRG04', 100, 20500);
insert into itemBeli (kd_itemBeli, kd_notaBeli, id_barang, qty, harga) values (seq_itemBeli.nextval, 8, 'BRG05', 100, 20500);
insert into itemBeli (kd_itemBeli, kd_notaBeli, id_barang, qty, harga) values (seq_itemBeli.nextval, 9, 'BRG06', 100, 18500);
insert into itemBeli (kd_itemBeli, kd_notaBeli, id_barang, qty, harga) values (seq_itemBeli.nextval, 10, 'BRG05', 100, 18500);
insert into itemBeli values (seq_itemBeli.nextval, 11, 'BRG06', 100, 15500);
insert into itemBeli values (seq_itemBeli.nextval, 12, 'BRG06', 100, 15500);
insert into itemBeli values (seq_itemBeli.nextval, 13, 'BRG07', 100, 19500);
insert into itemBeli values (seq_itemBeli.nextval, 14, 'BRG07', 100, 19500);
insert into itemBeli values (seq_itemBeli.nextval, 15, 'BRG08', 100, 14500);
insert into itemBeli values (seq_itemBeli.nextval, 16, 'BRG08', 100, 14500);
insert into itemBeli values (seq_itemBeli.nextval, 17, 'BRG09', 100, 11500);
insert into itemBeli values (seq_itemBeli.nextval, 18, 'BRG09', 100, 11500);
insert into itemBeli values (seq_itemBeli.nextval, 19, 'BRG11', 100, 28500);
insert into itemBeli values (seq_itemBeli.nextval, 20, 'BRG11', 100, 28500);

--SUBQUERY 1--
select fil.nama_brg nama_barang, fil.stok last_stok, sum(buy.qty) add_stok
from itemBeli buy, (
    select b.id_barang, b.nama_brg, b.stok
    from barang b where b.id_barang 
    in (select b2.id_barang
        from itemBeli b2
        group by b2.id_barang)
    ) fil
where fil.id_barang = buy.id_barang
group by fil.nama_brg, fil.stok, buy.qty;

select nama_brg nama_barang, stok last_stok, (
    select sum(qty) 
    from itemBeli
    where fil.id_barang = itemBeli.id_barang
    group by id_barang
) as add_stok
from (
    select b.id_barang, b.nama_brg, b.stok
    from barang b where b.id_barang 
    in (select b2.id_barang
        from itemBeli b2
        group by b2.id_barang)
) fil;
   
--SUBQUERY 2--
select fil.nama_kry nama_karyawan, sum(buy.harga*buy.qty) total_beli
from itemBeli buy, (
    select b.kd_notaBeli, b.id_karyawan, k.nama_kry
    from karyawan k, notaBeli b
    where k.id_karyawan in b.id_karyawan
) fil
where fil.kd_notaBeli = buy.kd_notaBeli
group by nama_kry;

select nama_kry nama_karyawan, (
    select sum(harga*qty)
    from itemBeli buy, notaBeli nb
    where buy.kd_notaBeli = nb.kd_notaBeli
    and fil.id_karyawan in nb.id_karyawan
    group by nama_kry
) as total_beli
from (
    select k.id_karyawan, k.nama_kry
    from karyawan k, notaBeli b
    where k.id_karyawan in b.id_karyawan
    group by k.id_karyawan, k.nama_kry
) fil;

--SUBQUERY 3--
select fil.nama_supp, sum(buy.harga*buy.qty) nilai_suplai
from itemBeli buy, (
    select s.nama_supp, b.kd_notaBeli, b.id_supplier
    from supplier s, notaBeli b
    where s.id_supplier in b.id_supplier
) fil
where fil.kd_notaBeli = buy.kd_notaBeli
group by nama_supp;

select nama_supp nama_supplier, (
    select sum(harga*qty)
    from itemBeli buy, notaBeli nb
    where buy.kd_notaBeli = nb.kd_notaBeli
    and fil.id_supplier in nb.id_supplier
) as nilai_suplai
from (
    select s.id_supplier, s.nama_supp
    from supplier s, notaBeli b
    where s.id_supplier in b.id_supplier
    group by s.id_supplier, s.nama_supp
) fil;

--SUBQUERY 4--
select fil.mtd_bayar, sum(buy.harga*buy.qty) total_nilai
from itemBeli buy, (
    select n.mtd_bayar, n.kd_notaBeli
    from karyawan k, notaBeli n
    where k.id_karyawan = n.id_karyawan
    and k.id_karyawan = 'KRY07'
) fil
where fil.kd_notaBeli = buy.kd_notaBeli
group by mtd_bayar;

--SUBQUERY 5--
select kry.id_karyawan, kry.nama_kry, (
    select count(id_karyawan)
    from notaBeli
    where kry.id_karyawan = notaBeli.id_karyawan
    group by id_karyawan
) as jumlah_transaksi
from (select k.id_karyawan, k.nama_kry
    from karyawan k, notaBeli b
    where k.id_karyawan in b.id_karyawan
    group by k.id_karyawan, k.nama_kry
)kry;