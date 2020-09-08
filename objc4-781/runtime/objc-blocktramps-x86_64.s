/*
 * Copyright (c) 1999-2007 Apple Inc.  All Rights Reserved.
 * 
 * @APPLE_LICENSE_HEADER_START@
 * 
 * This file contains Original Code and/or Modifications of Original Code
 * as defined in and that are subject to the Apple Public Source License
 * Version 2.0 (the 'License'). You may not use this file except in
 * compliance with the License. Please obtain a copy of the License at
 * http://www.opensource.apple.com/apsl/ and read it before using this
 * file.
 * 
 * The Original Code and all software distributed under the License are
 * distributed on an 'AS IS' basis, WITHOUT WARRANTY OF ANY KIND, EITHER
 * EXPRESS OR IMPLIED, AND APPLE HEREBY DISCLAIMS ALL SUCH WARRANTIES,
 * INCLUDING WITHOUT LIMITATION, ANY WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE, QUIET ENJOYMENT OR NON-INFRINGEMENT.
 * Please see the License for the specific language governing rights and
 * limitations under the License.
 * 
 * @APPLE_LICENSE_HEADER_END@
 */

#ifdef __x86_64__

#include <mach/vm_param.h>

.text
.globl __objc_blockTrampolineImpl
.globl __objc_blockTrampolineStart
.globl __objc_blockTrampolineLast

.align PAGE_SHIFT
__objc_blockTrampolineImpl:
    movq (%rsp), %r10  // read return address pushed by TrampolineEntry's callq
    movq %rdi, %rsi    // arg1 -> arg2
    movq -2*PAGE_SIZE-5(%r10), %rdi  // block object pointer -> arg1
                       // trampoline is -5 bytes from the return address
                       // data is -2 pages from the trampoline
    ret                // back to TrampolineEntry to preserve CPU's return stack

.macro TrampolineEntry
    // This trampoline is 8 bytes long.
    // This callq is 5 bytes long.
    callq __objc_blockTrampolineImpl
    jmp  *16(%rdi)
.endmacro

.align 5
__objc_blockTrampolineStart:
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
    TrampolineEntry
__objc_blockTrampolineLast:
    TrampolineEntry


.text
.globl __objc_blockTrampolineImpl_stret
.globl __objc_blockTrampolineStart_stret
.globl __objc_blockTrampolineLast_stret

.align PAGE_SHIFT
__objc_blockTrampolineImpl_stret:

    // %rdi -- arg1 -- is address of return value's space. Don't mess with it.
    movq (%rsp), %r10  // read return address pushed by TrampolineEntry's callq
    movq %rsi, %rdx    // arg2 -> arg3
    movq -3*PAGE_SIZE-5(%r10), %rsi  // block object pointer -> arg2
                       // trampoline is -5 bytes from the return address
                       // data is -3 pages from the trampoline
    ret                // back to TrampolineEntry to preserve CPU's return stack

.macro TrampolineEntry_stret
    // This trampoline is 8 bytes long.
    // This callq is 5 bytes long.
    callq __objc_blockTrampolineImpl_stret
    jmp  *16(%rsi)
.endmacro

.align 5
__objc_blockTrampolineStart_stret:
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
    TrampolineEntry_stret
__objc_blockTrampolineLast_stret:
    TrampolineEntry_stret

#endif