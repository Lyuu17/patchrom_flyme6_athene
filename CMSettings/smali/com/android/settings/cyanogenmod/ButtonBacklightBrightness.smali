.class public Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;
.super Landroid/preference/DialogPreference;
.source "ButtonBacklightBrightness.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$SavedState;,
        Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;
    }
.end annotation


# instance fields
.field private mActiveControl:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

.field private mButtonBrightness:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

.field private mKeyboardBrightness:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

.field private mOriginalTimeout:I

.field private mResolver:Landroid/content/ContentResolver;

.field private mTimeoutBar:Landroid/widget/SeekBar;

.field private mTimeoutContainer:Landroid/view/ViewGroup;

.field private mTimeoutValue:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;)Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;
    .locals 1

    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    return-object v0
.end method

.method static synthetic -get1(Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;)Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;
    .locals 1

    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    return-object v0
.end method

.method static synthetic -get2(Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get3(Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic -set0(Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;)Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;
    .locals 0

    iput-object p1, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mActiveControl:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;I)V
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->applyTimeout(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;)V
    .locals 0

    invoke-direct {p0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->updateBrightnessPreview()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;)V
    .locals 0

    invoke-direct {p0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->updateTimeoutEnabledState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mResolver:Landroid/content/ContentResolver;

    .line 70
    const v2, 0x7f040020

    invoke-virtual {p0, v2}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->setDialogLayoutResource(I)V

    .line 72
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->isKeyboardSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    new-instance v2, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    .line 74
    const-string/jumbo v3, "keyboard_brightness"

    const/4 v4, 0x0

    .line 73
    invoke-direct {v2, p0, v3, v4}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;-><init>(Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    .line 75
    iget-object v2, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    iput-object v2, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mActiveControl:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->isButtonSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 79
    const v3, 0x1120057

    .line 78
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    .line 81
    .local v1, "isSingleValue":Z
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 82
    const v3, 0x10e006f

    .line 81
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 84
    .local v0, "defaultBrightness":I
    new-instance v2, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    .line 85
    const-string/jumbo v3, "button_brightness"

    .line 84
    invoke-direct {v2, p0, v3, v1, v0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;-><init>(Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;Ljava/lang/String;ZI)V

    iput-object v2, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    .line 86
    iget-object v2, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    iput-object v2, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mActiveControl:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    .line 89
    .end local v0    # "defaultBrightness":I
    .end local v1    # "isSingleValue":Z
    :cond_1
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->updateSummary()V

    .line 65
    return-void

    .line 78
    :cond_2
    const/4 v1, 0x1

    .restart local v1    # "isSingleValue":Z
    goto :goto_0
.end method

.method private applyTimeout(I)V
    .locals 3
    .param p1, "timeout"    # I

    .prologue
    .line 278
    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mResolver:Landroid/content/ContentResolver;

    .line 279
    const-string/jumbo v1, "button_backlight_timeout"

    mul-int/lit16 v2, p1, 0x3e8

    .line 278
    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 277
    return-void
.end method

.method private getTimeout()I
    .locals 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mResolver:Landroid/content/ContentResolver;

    .line 274
    const-string/jumbo v1, "button_backlight_timeout"

    const/16 v2, 0x1388

    .line 273
    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method private getTimeoutString(I)Ljava/lang/String;
    .locals 4
    .param p1, "timeout"    # I

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 269
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/high16 v2, 0x7f110000

    .line 268
    invoke-virtual {v0, v2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleTimeoutUpdate(I)V
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 306
    if-nez p1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutValue:Landroid/widget/TextView;

    const v1, 0x7f0c0212

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 305
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutValue:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->getTimeoutString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateBrightnessPreview()V
    .locals 4

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_1

    .line 284
    :cond_0
    return-void

    .line 286
    :cond_1
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 287
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 288
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mActiveControl:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v2, :cond_2

    .line 289
    iget-object v2, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mActiveControl:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 293
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 282
    return-void

    .line 291
    :cond_2
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    goto :goto_0
.end method

.method private updateTimeoutEnabledState()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 297
    iget-object v3, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v3, :cond_0

    .line 298
    iget-object v3, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v3, v4}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v0

    .line 299
    .local v0, "buttonBrightness":I
    :goto_0
    iget-object v3, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 300
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 301
    iget-object v3, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v5, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 300
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 298
    .end local v0    # "buttonBrightness":I
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "buttonBrightness":I
    goto :goto_0

    .restart local v1    # "count":I
    .restart local v2    # "i":I
    :cond_1
    move v3, v4

    .line 301
    goto :goto_2

    .line 296
    :cond_2
    return-void
.end method


# virtual methods
.method public isButtonSupported()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 227
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 229
    .local v3, "res":Landroid/content/res/Resources;
    const v5, 0x10e0062

    .line 228
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 231
    .local v0, "deviceKeys":I
    and-int/lit8 v5, v0, 0x1

    if-nez v5, :cond_0

    .line 232
    and-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_1

    .line 231
    :cond_0
    const/4 v2, 0x1

    .line 237
    .local v2, "hasBacklightKey":Z
    :goto_0
    const v5, 0x10e006f

    .line 236
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-lez v5, :cond_3

    const/4 v1, 0x1

    .line 239
    .local v1, "hasBacklight":Z
    :goto_1
    if-eqz v2, :cond_4

    .end local v1    # "hasBacklight":Z
    :goto_2
    return v1

    .line 233
    .end local v2    # "hasBacklightKey":Z
    :cond_1
    and-int/lit8 v5, v0, 0x4

    if-nez v5, :cond_0

    .line 234
    and-int/lit8 v5, v0, 0x8

    if-nez v5, :cond_0

    .line 235
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_2

    const/4 v2, 0x1

    .restart local v2    # "hasBacklightKey":Z
    goto :goto_0

    .end local v2    # "hasBacklightKey":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "hasBacklightKey":Z
    goto :goto_0

    .line 236
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "hasBacklight":Z
    goto :goto_1

    :cond_4
    move v1, v4

    .line 239
    goto :goto_2
.end method

.method public isKeyboardSupported()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 243
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 244
    const v2, 0x10e0070

    .line 243
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x8

    .line 104
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 106
    const v2, 0x7f130042

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutContainer:Landroid/view/ViewGroup;

    .line 107
    const v2, 0x7f130045

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    .line 108
    const v2, 0x7f130044

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutValue:Landroid/widget/TextView;

    .line 109
    iget-object v2, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 110
    iget-object v2, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 111
    invoke-direct {p0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->getTimeout()I

    move-result v2

    iput v2, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mOriginalTimeout:I

    .line 112
    iget-object v2, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mOriginalTimeout:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 113
    iget-object v2, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->handleTimeoutUpdate(I)V

    .line 115
    const v2, 0x7f13003c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 116
    .local v0, "buttonContainer":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v2, :cond_2

    .line 117
    iget-object v2, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v2, v0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->init(Landroid/view/ViewGroup;)V

    .line 123
    :goto_0
    const v2, 0x7f130047

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 124
    .local v1, "keyboardContainer":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v2, :cond_3

    .line 125
    iget-object v2, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v2, v1}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->init(Landroid/view/ViewGroup;)V

    .line 130
    :goto_1
    iget-object v2, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-nez v2, :cond_1

    .line 131
    :cond_0
    const v2, 0x7f130046

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 103
    :cond_1
    return-void

    .line 119
    .end local v1    # "keyboardContainer":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 120
    iget-object v2, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 127
    .restart local v1    # "keyboardContainer":Landroid/view/ViewGroup;
    :cond_3
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .param p1, "positiveResult"    # Z

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 163
    if-nez p1, :cond_0

    .line 164
    iget v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mOriginalTimeout:I

    invoke-direct {p0, v0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->applyTimeout(I)V

    .line 165
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 171
    const-string/jumbo v1, "pre_navbar_button_backlight"

    iget-object v2, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v2

    .line 169
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->applyTimeout(I)V

    .line 176
    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->applyBrightness()V

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v0, :cond_3

    .line 180
    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->applyBrightness()V

    .line 183
    :cond_3
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->updateSummary()V

    .line 160
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 95
    new-instance v0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$1;

    invoke-direct {v0, p0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$1;-><init>(Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;)V

    .line 94
    const v1, 0x7f0c008b

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 93
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 315
    invoke-direct {p0, p2}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->handleTimeoutUpdate(I)V

    .line 314
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 208
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 214
    check-cast v0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$SavedState;

    .line 215
    .local v0, "myState":Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$SavedState;
    invoke-virtual {v0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 217
    iget-object v1, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    iget v2, v0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$SavedState;->timeout:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 218
    iget-object v1, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    iget v2, v0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$SavedState;->button:I

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->setBrightness(I)V

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    iget v2, v0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$SavedState;->keyboard:I

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->setBrightness(I)V

    .line 207
    :cond_1
    return-void

    .line 210
    .end local v0    # "myState":Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$SavedState;
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 211
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 188
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 189
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 194
    new-instance v0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$SavedState;

    invoke-direct {v0, v1}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 195
    .local v0, "myState":Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$SavedState;
    iget-object v2, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iput v2, v0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$SavedState;->timeout:I

    .line 196
    iget-object v2, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v2, :cond_0

    .line 197
    iget-object v2, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v2, v3}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v2

    iput v2, v0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$SavedState;->button:I

    .line 199
    :cond_0
    iget-object v2, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v2, :cond_1

    .line 200
    iget-object v2, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v2, v3}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v2

    iput v2, v0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$SavedState;->keyboard:I

    .line 203
    :cond_1
    return-object v0

    .line 190
    .end local v0    # "myState":Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$SavedState;
    :cond_2
    return-object v1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 319
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 325
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->applyTimeout(I)V

    .line 324
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 142
    .local v0, "d":Landroid/app/AlertDialog;
    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 143
    .local v1, "defaultsButton":Landroid/widget/Button;
    new-instance v2, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$2;

    invoke-direct {v2, p0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$2;-><init>(Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    invoke-direct {p0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->updateBrightnessPreview()V

    .line 136
    return-void
.end method

.method public updateSummary()V
    .locals 6

    .prologue
    const v4, 0x7f0c0213

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 248
    iget-object v2, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v2, :cond_2

    .line 249
    iget-object v2, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v2, v3}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v0

    .line 250
    .local v0, "buttonBrightness":I
    invoke-direct {p0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->getTimeout()I

    move-result v1

    .line 252
    .local v1, "timeout":I
    if-nez v0, :cond_0

    .line 253
    invoke-virtual {p0, v4}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->setSummary(I)V

    .line 247
    .end local v0    # "buttonBrightness":I
    .end local v1    # "timeout":I
    :goto_0
    return-void

    .line 254
    .restart local v0    # "buttonBrightness":I
    .restart local v1    # "timeout":I
    :cond_0
    if-nez v1, :cond_1

    .line 255
    const v2, 0x7f0c0212

    invoke-virtual {p0, v2}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->setSummary(I)V

    goto :goto_0

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    .line 258
    invoke-direct {p0, v1}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->getTimeoutString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 257
    const v4, 0x7f0c0214

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 260
    .end local v0    # "buttonBrightness":I
    .end local v1    # "timeout":I
    :cond_2
    iget-object v2, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v2, v3}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v2

    if-eqz v2, :cond_3

    .line 261
    const v2, 0x7f0c0215

    invoke-virtual {p0, v2}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->setSummary(I)V

    goto :goto_0

    .line 263
    :cond_3
    invoke-virtual {p0, v4}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->setSummary(I)V

    goto :goto_0
.end method
