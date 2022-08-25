create database Asm_java4
go
use Asm_java4
go

create table [user](
	id				int				primary key identity,
	username		varchar(10)		unique not null,
	[password]		varchar(50)		not null,
	email			varchar(50)		unique,
	isAdmin			bit				not null default 0,
	isActive		bit				not null default 1
)

create table video(
	id				int				primary key identity,
	title			nvarchar(250)	not null,
	href			varchar(50)		unique not null,
	poster			varchar(255)	null,
	[views]			int				not null default 0,
	shares			int				not null default 0,
	[descreiption]	nvarchar(255)	not null,
	isActive		bit				not null default 1		
)

create table history(
	id				int				primary key identity,
	userid			int				foreign key references [user](id),
	videoid			int				foreign key references video(id),
	viewedDate		datetime		not null default getDate(),
	isLike			bit				not null default 0,
	likeDate		datetime		null
)

insert into [user] (username, [password], email, isAdmin) values
('lamnh',		'123',		'lamnhps16063@fpt.edu.vn',		1),
('hoangln',		'111',		'lamdzvler0108@gmail.com',		0)
go

insert into video(title, href, [descreiption]) values 
(N'Anh Vẫn Ở Đây Remix (Vinahouse) - Thành Đạt',		'ouGfư1IEqt2jI',		N'Thành Đạt'),
(N'DANHKA | TÌNH KA ',									'J5oaDY6EWOI',			N'DANHKA'),
(N'GIRL M52 - HUY X TUNG VIU X VBK Remix',				'3jgBX44okt0',			N'HUY X TUNG VIU'),
(N' BÁNH MÌ KHÔNG - ĐạtG x DuUyên ( T-REX Remix ) Bản Remix Hay 2020',				'ntcdRXf5EV4',			N'ĐạtG x DuUyên'),
(N'Đôi bờ - Đôi bờ - KraziNoyze ft. BlakRay, DSK',				'hF12jIJkPZA',			N'KraziNoyze ft. BlakRay, DSK')
go