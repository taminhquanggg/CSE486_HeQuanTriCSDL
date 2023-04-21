sp_addlogin 'quang_I_D', '1234'
sp_addlogin 'quang_U', '1234'
sp_addlogin 'quang_master', '1234'

USE QLSV
sp_grantdbaccess 'quang_I_D', 'quang_I_D'
sp_grantdbaccess 'quang_U', 'quang_U'
sp_grantdbaccess 'quang_master', 'quang_master'

-- phan quyen
--role select
sp_addrole 'quang_select'
GRANT SELECT ON SINHVIEN to quang_select
GRANT SELECT ON MON to quang_select
GRANT SELECT ON DIEM to quang_select
sp_addrolemember quang_select, quang_I_D
sp_addrolemember quang_select, quang_U

-- role insert
sp_addrole 'quang_insert'
-- cap quyen cho role

GRANT INSERT ON SINHVIEN to quang_insert
GRANT INSERT ON MON to quang_insert
GRANT INSERT ON DIEM to quang_insert

-- them user vao role
sp_addrolemember quang_insert, quang_I_D

-- role delete sv
sp_addrole 'quang_delete'
GRANT DELETE ON SINHVIEN to quang_delete
sp_addrolemember quang_delete, quang_I_D

-- role update sv
sp_addrole 'quang_update'
GRANT UPDATE ON SINHVIEN to quang_update
sp_addrolemember quang_update, quang_U


SELECT pri.name AS Username,
       pri.type_desc AS [User Type],
       permit.permission_name AS [Permission],
       permit.state_desc AS [Permission State],
       permit.class_desc CLASS,
                         object_name(permit.major_id) AS [Object Name]
FROM sys.database_principals pri
LEFT JOIN sys.database_permissions permit ON permit.grantee_principal_id = pri.principal_id
WHERE pri.name = 'quang_delete'


