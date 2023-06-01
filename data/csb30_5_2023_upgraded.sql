use CSB
create table HANGMUCSUACHUA
(
	hmsc_id varchar(40) primary key,
	hmsc_ten nvarchar(100) not null,
	hmsc_ghichu nvarchar(200)
)
go

create table CHITIETHANGMUCSUACHUA
(
	ct_hmsc_id varchar(40) primary key,
	ct_hmsc_ten nvarchar(100) not null,
	ct_hmsc_fid varchar(40)
)
alter table CHITIETHANGMUCSUACHUA add constraint
FK_HMSC_CHITIET foreign key(ct_hmsc_fid) references
HANGMUCSUACHUA(hmsc_id) on DELETE cascade 

create proc LAYDMCHITIETHMSCTHEOHMSC
@hmsc_id varchar(40)
as
select * from CHITIETHANGMUCSUACHUA
left join HANGMUCSUACHUA on ct_hmsc_fid = hmsc_id
where hmsc_id=@hmsc_id order by ct_hmsc_ten

create proc LAYDMCHITIETHMSCTHEOID
@cthmsc_id varchar(40)
as
select * from CHITIETHANGMUCSUACHUA
left join HANGMUCSUACHUA on ct_hmsc_fid = hmsc_id
where ct_hmsc_id=@cthmsc_id

create table YEUCAUHMSC
(
	yc_id varchar(40) primary key,
	yc_noidung nvarchar(500) not null,
	yc_donvitinh nvarchar(100),
	yc_soluong varchar(10),
	yc_tinhtrangkythuat nvarchar(200),
	yc_yeucausuachua nvarchar(500),
	yc_ngaytao varchar(20),
	yc_ngaycapnhat varchar(20),
	yc_file varchar(200),
	yc_deleted bit default 0,
	yc_id_tau varchar(40),
	yc_id_capsuachua varchar(40)
)
alter table YEUCAUHMSC add constraint FK_TAU_YEUCAU
foreign key(yc_id_tau) references 
THONGTINTAU(TTT_ID) on delete cascade

alter table YEUCAUHMSC add constraint FK_CAPSUACHUA_YEUCAU
foreign key(yc_id_capsuachua) references 
CAPSUACHUA(CSC_ID) on delete set NULL
--alter table YEUCAUHMSC add constraint FK_CHITIETHMSC_YEUCAU
--foreign key(yc_chitiethmsc) references 
--CHITIETHANGMUCSUACHUA(ct_hmsc_id) on delete set NULL
create proc LAYYEUCAUHMSC
@yc_id_tau varchar(40)
as
select * from YEUCAUHMSC left join 
CAPSUACHUA on yc_id_capsuachua=CSC_ID where yc_id_tau=@yc_id_tau
and yc_deleted=0
order by CONVERT(datetime, yc_ngaytao, 103) desc

alter proc THEMYEUCAUHMSC
@yc_id varchar(40),
@yc_noidung nvarchar(500),
@yc_donvitinh nvarchar(100),
@yc_soluong varchar(10),
@yc_tinhtrangkythuat nvarchar(200),
@yc_yeucausuachua nvarchar(500),
@yc_ngaytao varchar(20),
@yc_ngaycapnhat varchar(20),
@yc_id_tau varchar(40),
@yc_id_capsuachua varchar(40)
as 
insert into YEUCAUHMSC(yc_id, yc_noidung, yc_donvitinh,
yc_soluong,yc_tinhtrangkythuat,yc_yeucausuachua,
yc_ngaytao,yc_ngaycapnhat,yc_id_tau, yc_id_capsuachua)
values(@yc_id, @yc_noidung, @yc_donvitinh,
@yc_soluong,@yc_tinhtrangkythuat,@yc_yeucausuachua,
@yc_ngaytao,@yc_ngaycapnhat,@yc_id_tau, @yc_id_capsuachua)

create proc SUAYEUCAUHMSC
@yc_id varchar(40),
@yc_noidung nvarchar(500),
@yc_donvitinh nvarchar(100),
@yc_soluong varchar(10),
@yc_tinhtrangkythuat nvarchar(200),
@yc_yeucausuachua nvarchar(500),
@yc_ngaycapnhat varchar(20),
@yc_id_capsuachua varchar(40)
as 
update YEUCAUHMSC set yc_noidung=@yc_noidung, yc_donvitinh=@yc_donvitinh,
yc_soluong=@yc_soluong, yc_tinhtrangkythuat=@yc_tinhtrangkythuat,
yc_yeucausuachua=@yc_yeucausuachua,
yc_ngaycapnhat=@yc_ngaycapnhat, yc_id_capsuachua=@yc_id_capsuachua where yc_id=@yc_id

create proc XOAYEUCAUHMSC
@yc_id varchar(40)
as 
update YEUCAUHMSC set yc_deleted=1  where yc_id=@yc_id
use CSB


create proc LAYYEUCAUHMSC_BTLVUNG
@btl_id varchar(40)
as
select YEUCAUHMSC.*, THONGTINTAU.*, Flotilla.*, NavalRegion.*, Squadron.* from YEUCAUHMSC
left join CAPSUACHUA on yc_id_capsuachua=CSC_ID
left join THONGTINTAU on TTT_ID = yc_id_tau
left join Flotilla on THONGTINTAU.ID_FLOT = Flotilla.flot_id
left join Squadron on Flotilla.squad_id = Squadron.squad_id
left join NavalRegion on Squadron.nav_id = NavalRegion.nav_id
where NavalRegion.nav_id = @btl_id and yc_deleted=0
union 
select YEUCAUHMSC.*, THONGTINTAU.*, Flotilla.*, NavalRegion.*, 
squad_id=null, squad_name=null, nav_id=NavalRegion.nav_id from YEUCAUHMSC
left join CAPSUACHUA on yc_id_capsuachua=CSC_ID
left join THONGTINTAU on TTT_ID = yc_id_tau
left join Flotilla on THONGTINTAU.ID_FLOT = Flotilla.flot_id
left join NavalRegion on Flotilla.nav_id = NavalRegion.nav_id
where NavalRegion.nav_id = @btl_id and squad_id is null and yc_deleted=0 
order by nav_short_name, squad_name, flot_name

create proc LAYYEUCAUHMSC_HAIDOAN
@hdid varchar(40)
as
select YEUCAUHMSC.*, THONGTINTAU.*, Flotilla.*, NavalRegion.*, Squadron.* from YEUCAUHMSC
left join CAPSUACHUA on yc_id_capsuachua=CSC_ID
left join THONGTINTAU on TTT_ID = yc_id_tau
left join Flotilla on THONGTINTAU.ID_FLOT = Flotilla.flot_id
left join Squadron on Flotilla.squad_id = Squadron.squad_id
left join NavalRegion on Squadron.nav_id = NavalRegion.nav_id
where Squadron.squad_id = @hdid and yc_deleted=0 

create proc LAYYEUCAUHMSC_HAIDOI
@hdid varchar(40)
as
select THONGTINTAU.*, Flotilla.*, NavalRegion.*, Squadron.* from YEUCAUHMSC
left join CAPSUACHUA on yc_id_capsuachua=CSC_ID
left join THONGTINTAU on TTT_ID = yc_id_tau
left join Flotilla on THONGTINTAU.ID_FLOT = Flotilla.flot_id
left join Squadron on Flotilla.squad_id = Squadron.squad_id
left join NavalRegion on Squadron.nav_id = NavalRegion.nav_id
where Flotilla.flot_id = @hdid and yc_deleted=0 
union 
select THONGTINTAU.*, Flotilla.*, NavalRegion.*, squad_id=null, squad_name=null, nav_id=NavalRegion.nav_id
from YEUCAUHMSC
left join CAPSUACHUA on yc_id_capsuachua=CSC_ID
left join THONGTINTAU on TTT_ID = yc_id_tau
left join Flotilla on THONGTINTAU.ID_FLOT = Flotilla.flot_id
left join NavalRegion on Flotilla.nav_id = NavalRegion.nav_id
where Flotilla.flot_id = @hdid and squad_id is null and yc_deleted=0 