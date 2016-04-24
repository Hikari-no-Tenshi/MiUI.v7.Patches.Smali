.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10

    const/16 v0, 0x16

    const/16 v1, 0x15

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1b

    invoke-direct {p0, v3}, Landroid/inputmethodservice/InputMethodService;->handleBack(Z)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    move v0, v2

    :goto_18
    return v0

    :cond_19
    move v0, v3

    goto :goto_18

    :cond_1b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x18

    if-ne v4, v5, :cond_47

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "volume_key_cursor_control"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/inputmethodservice/InputMethodService;->mVolumeKeyCursorControl:I

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v4

    if-eqz v4, :cond_45

    iget v4, p0, Landroid/inputmethodservice/InputMethodService;->mVolumeKeyCursorControl:I

    if-eqz v4, :cond_45

    iget v3, p0, Landroid/inputmethodservice/InputMethodService;->mVolumeKeyCursorControl:I

    if-ne v3, v6, :cond_43

    :goto_3e
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->sendDownUpKeyEvents(I)V

    move v0, v2

    goto :goto_18

    :cond_43
    move v0, v1

    goto :goto_3e

    :cond_45
    move v0, v3

    goto :goto_18

    :cond_47
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x19

    if-ne v4, v5, :cond_73

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "volume_key_cursor_control"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/inputmethodservice/InputMethodService;->mVolumeKeyCursorControl:I

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v4

    if-eqz v4, :cond_71

    iget v4, p0, Landroid/inputmethodservice/InputMethodService;->mVolumeKeyCursorControl:I

    if-eqz v4, :cond_71

    iget v3, p0, Landroid/inputmethodservice/InputMethodService;->mVolumeKeyCursorControl:I

    if-ne v3, v6, :cond_6f

    :goto_6a
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->sendDownUpKeyEvents(I)V

    move v0, v2

    goto :goto_18

    :cond_6f
    move v1, v0

    goto :goto_6a

    :cond_71
    move v0, v3

    goto :goto_18

    :cond_73
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    move-result v0

    goto :goto_18
.end method
