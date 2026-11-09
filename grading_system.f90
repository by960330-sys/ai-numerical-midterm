! ============================================================================
! 程式名稱：grading_system.f90
! 學生姓名：李柏穎 | 學號：414210392
! 程式功能：第五題 — 任務達成評分系統 (允許輸入前四題的結果，達標就給分)
! ============================================================================

program grading_system
    implicit none
    integer(kind=8) :: q1_n, q1_ans
    integer(kind=8) :: q2_n(3), q2_ans(3)
    integer :: q3_commits, q3_commented
    integer :: q4_pushed
    integer :: score_q1, score_q2, score_q3, score_q4, score_q5, total_score
    integer :: i, pass_count

    score_q1 = 0
    score_q2 = 0
    score_q3 = 0
    score_q4 = 0
    score_q5 = 20  ! 評分系統本身正常執行達標給 20 分

    print '(A)', '============================================================'
    print '(A)', '  AI 數值方法期中考 - 任務達成評分系統 (李柏穎 414210392)'
    print '(A)', '============================================================'

    ! 第一題驗證：輸入測試之 N 與程式輸出之總和，檢查是否等於 N*(N+1)/2
    print '(A)', '[第一題] 請輸入 Fortran 程式測試之 N 與計算結果 (例如: 100 5050):'
    read(*, *) q1_n, q1_ans
    if (q1_n > 0 .and. q1_ans == q1_n * (q1_n + 1) / 2) then
        score_q1 = 20
        print '(A, I0, A)', '  -> 第一題判定：達標 (計算結果正確)！得分：', score_q1, ' / 20'
    else
        print '(A)', '  -> 第一題判定：未達標！得分：0 / 20'
    end if

    ! 第二題驗證：輸入三次隨機驗證之 N 與程式輸出結果
    print '(A)', '[第二題] 請依序輸入三次隨機驗證之 (N, 計算結果):'
    pass_count = 0
    do i = 1, 3
        read(*, *) q2_n(i), q2_ans(i)
        if (q2_n(i) > 0 .and. q2_ans(i) == q2_n(i) * (q2_n(i) + 1) / 2) then
            pass_count = pass_count + 1
            print '(A, I0, A, I0, A, I0, A)', '  -> 隨機測試 #', i, ' (N=', q2_n(i), ', Sum=', q2_ans(i), ') 驗證通過！'
        else
            print '(A, I0, A)', '  -> 隨機測試 #', i, ' 驗證失敗！'
        end if
    end do
    if (pass_count == 3) then
        score_q2 = 20
        print '(A, I0, A)', '  -> 第二題判定：三次隨機驗證全數達標！得分：', score_q2, ' / 20'
    else
        print '(A)', '  -> 第二題判定：未完成三次正確驗證！得分：0 / 20'
    end if

    ! 第三題驗證：輸入 Git commit 數量 (需 >= 2) 與是否完成逐行註解編譯驗證 (1=是, 0=否)
    print '(A)', '[第三題] 請輸入 Git 認錄次數 (commits) 與逐行註解驗證狀態 (1=達標, 0=未達標):'
    read(*, *) q3_commits, q3_commented
    if (q3_commits >= 2 .and. q3_commented == 1) then
        score_q3 = 20
        print '(A, I0, A)', '  -> 第三題判定：原版與逐行註解新版皆已認錄達標！得分：', score_q3, ' / 20'
    else
        print '(A)', '  -> 第三題判定：未達標！得分：0 / 20'
    end if

    ! 第四題驗證：輸入 GitHub 雲端推送狀態 (1=已成功上傳 GitHub, 0=未上傳)
    print '(A)', '[第四題] 請輸入 GitHub 雲端儲存狀態 (1=已推送至 GitHub, 0=未推送):'
    read(*, *) q4_pushed
    if (q4_pushed == 1) then
        score_q4 = 20
        print '(A, I0, A)', '  -> 第四題判定：已成功傳送至 GitHub 雲端儲存達標！得分：', score_q4, ' / 20'
    else
        print '(A)', '  -> 第四題判定：未達標！得分：0 / 20'
    end if

    print '(A, I0, A)', '[第五題] 任務達成評分系統建置與自動評核完成！得分：', score_q5, ' / 20'

    total_score = score_q1 + score_q2 + score_q3 + score_q4 + score_q5
    print '(A)', '------------------------------------------------------------'
    print '(A, I0, A)', '  最終總評分結果：', total_score, ' / 100 分'
    print '(A)', '============================================================'
end program grading_system
