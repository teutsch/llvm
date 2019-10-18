; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
; RUN: opt < %s -correlated-propagation -cvp-dont-add-nowrap-flags=false -S | FileCheck %s

define i8 @test0(i8 %a) {
; CHECK-LABEL: @test0(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    [[CMP:%.*]] = icmp ult i8 [[A:%.*]], 3
; CHECK-NEXT:    br i1 [[CMP]], label [[BB:%.*]], label [[EXIT:%.*]]
; CHECK:       bb:
; CHECK-NEXT:    [[MUL:%.*]] = mul i8 [[A]], 50
; CHECK-NEXT:    ret i8 [[MUL]]
; CHECK:       exit:
; CHECK-NEXT:    ret i8 0
;
entry:
  %cmp = icmp ult i8 %a, 3
  br i1 %cmp, label %bb, label %exit

bb:
  %mul = mul i8 %a, 50
  ret i8 %mul

exit:
  ret i8 0
}

define i8 @test1(i8 %a) {
; CHECK-LABEL: @test1(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    [[CMP:%.*]] = icmp ult i8 [[A:%.*]], 4
; CHECK-NEXT:    br i1 [[CMP]], label [[BB:%.*]], label [[EXIT:%.*]]
; CHECK:       bb:
; CHECK-NEXT:    [[MUL:%.*]] = mul i8 [[A]], 50
; CHECK-NEXT:    ret i8 [[MUL]]
; CHECK:       exit:
; CHECK-NEXT:    ret i8 0
;
entry:
  %cmp = icmp ult i8 %a, 4
  br i1 %cmp, label %bb, label %exit

bb:
  %mul = mul i8 %a, 50
  ret i8 %mul

exit:
  ret i8 0
}

define i8 @test2(i8 %a) {
; CHECK-LABEL: @test2(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    [[CMP:%.*]] = icmp ult i8 [[A:%.*]], 6
; CHECK-NEXT:    br i1 [[CMP]], label [[BB:%.*]], label [[EXIT:%.*]]
; CHECK:       bb:
; CHECK-NEXT:    [[MUL:%.*]] = mul i8 [[A]], 50
; CHECK-NEXT:    ret i8 [[MUL]]
; CHECK:       exit:
; CHECK-NEXT:    ret i8 0
;
entry:
  %cmp = icmp ult i8 %a, 6
  br i1 %cmp, label %bb, label %exit

bb:
  %mul = mul i8 %a, 50
  ret i8 %mul

exit:
  ret i8 0
}

define i8 @test3(i8 %a) {
; CHECK-LABEL: @test3(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    [[CMP:%.*]] = icmp ult i8 [[A:%.*]], 7
; CHECK-NEXT:    br i1 [[CMP]], label [[BB:%.*]], label [[EXIT:%.*]]
; CHECK:       bb:
; CHECK-NEXT:    [[MUL:%.*]] = mul i8 [[A]], 50
; CHECK-NEXT:    ret i8 [[MUL]]
; CHECK:       exit:
; CHECK-NEXT:    ret i8 0
;
entry:
  %cmp = icmp ult i8 %a, 7
  br i1 %cmp, label %bb, label %exit

bb:
  %mul = mul i8 %a, 50
  ret i8 %mul

exit:
  ret i8 0
}

define i8 @test4(i8 %a) {
; CHECK-LABEL: @test4(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    [[CMP1:%.*]] = icmp slt i8 [[A:%.*]], 3
; CHECK-NEXT:    [[CMP2:%.*]] = icmp sgt i8 [[A]], -3
; CHECK-NEXT:    [[COND:%.*]] = and i1 [[CMP1]], [[CMP2]]
; CHECK-NEXT:    br i1 [[COND]], label [[BB:%.*]], label [[EXIT:%.*]]
; CHECK:       bb:
; CHECK-NEXT:    [[MUL:%.*]] = mul i8 [[A]], 50
; CHECK-NEXT:    ret i8 [[MUL]]
; CHECK:       exit:
; CHECK-NEXT:    ret i8 0
;
entry:
  %cmp1 = icmp slt i8 %a, 3
  %cmp2 = icmp sgt i8 %a, -3
  %cond = and i1 %cmp1, %cmp2
  br i1 %cond, label %bb, label %exit

bb:
  %mul = mul i8 %a, 50
  ret i8 %mul

exit:
  ret i8 0
}

define i8 @test5(i8 %a) {
; CHECK-LABEL: @test5(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    [[CMP1:%.*]] = icmp slt i8 [[A:%.*]], 3
; CHECK-NEXT:    [[CMP2:%.*]] = icmp sgt i8 [[A]], -4
; CHECK-NEXT:    [[COND:%.*]] = and i1 [[CMP1]], [[CMP2]]
; CHECK-NEXT:    br i1 [[COND]], label [[BB:%.*]], label [[EXIT:%.*]]
; CHECK:       bb:
; CHECK-NEXT:    [[MUL:%.*]] = mul i8 [[A]], 50
; CHECK-NEXT:    ret i8 [[MUL]]
; CHECK:       exit:
; CHECK-NEXT:    ret i8 0
;
entry:
  %cmp1 = icmp slt i8 %a, 3
  %cmp2 = icmp sgt i8 %a, -4
  %cond = and i1 %cmp1, %cmp2
  br i1 %cond, label %bb, label %exit

bb:
  %mul = mul i8 %a, 50
  ret i8 %mul

exit:
  ret i8 0
}

define i8 @test6(i8 %a) {
; CHECK-LABEL: @test6(
; CHECK-NEXT:  entry:
; CHECK-NEXT:    [[CMP1:%.*]] = icmp slt i8 [[A:%.*]], 4
; CHECK-NEXT:    [[CMP2:%.*]] = icmp sgt i8 [[A]], -3
; CHECK-NEXT:    [[COND:%.*]] = and i1 [[CMP1]], [[CMP2]]
; CHECK-NEXT:    br i1 [[COND]], label [[BB:%.*]], label [[EXIT:%.*]]
; CHECK:       bb:
; CHECK-NEXT:    [[MUL:%.*]] = mul i8 [[A]], 50
; CHECK-NEXT:    ret i8 [[MUL]]
; CHECK:       exit:
; CHECK-NEXT:    ret i8 0
;
entry:
  %cmp1 = icmp slt i8 %a, 4
  %cmp2 = icmp sgt i8 %a, -3
  %cond = and i1 %cmp1, %cmp2
  br i1 %cond, label %bb, label %exit

bb:
  %mul = mul i8 %a, 50
  ret i8 %mul

exit:
  ret i8 0
}
