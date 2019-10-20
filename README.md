用來練習Docker
---
架構：
* Django(主要網站)
* postgresql(資料庫)
* pgadmin4(方便觀察資料庫)
* jenkins(自動化工作)
* remote_host(操作一些工作事項)
* GitLab(用於存放Django的版本控管)
---
主要目標：
使用Docker 自動建立系統
 - [x] DB自動將之前備份好的檔案，回寫到新的系統
 - [x] 使用Jenkins自動化備份資料庫檔案
 - [ ] 使用Jenkins達到自動化部屬
 - [ ] 使用Jenkins 做到CI/CD