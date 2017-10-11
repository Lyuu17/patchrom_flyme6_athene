.class Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;
.super Ljava/lang/Object;
.source "ButtonBacklightBrightness.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessControl"
.end annotation


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mDefaultBrightness:I

.field private mIsSingleValue:Z

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSetting:Ljava/lang/String;

.field private mValue:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;


# direct methods
.method public constructor <init>(Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "singleValue"    # Z

    .prologue
    .line 381
    const/16 v0, 0xff

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;-><init>(Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;Ljava/lang/String;ZI)V

    .line 380
    return-void
.end method

.method public constructor <init>(Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;Ljava/lang/String;ZI)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "singleValue"    # Z
    .param p4, "defaultBrightness"    # I

    .prologue
    .line 374
    iput-object p1, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->this$0:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iput-object p2, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mSetting:Ljava/lang/String;

    .line 376
    iput-boolean p3, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mIsSingleValue:Z

    .line 377
    iput p4, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mDefaultBrightness:I

    .line 374
    return-void
.end method

.method private handleBrightnessUpdate(I)V
    .locals 5
    .param p1, "brightness"    # I

    .prologue
    .line 455
    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->this$0:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;

    invoke-static {v0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->-wrap1(Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;)V

    .line 456
    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mValue:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mValue:Landroid/widget/TextView;

    const-string/jumbo v1, "%d%%"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    mul-int/lit8 v3, p1, 0x64

    div-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->this$0:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;

    invoke-static {v0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->-wrap2(Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;)V

    .line 454
    return-void
.end method


# virtual methods
.method public applyBrightness()V
    .locals 3

    .prologue
    .line 415
    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->this$0:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;

    invoke-static {v0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->-get2(Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mSetting:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 414
    return-void
.end method

.method public getBrightness(Z)I
    .locals 3
    .param p1, "persisted"    # Z

    .prologue
    .line 406
    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_4

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->this$0:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;

    invoke-static {v0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->-get2(Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mSetting:Ljava/lang/String;

    iget v2, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mDefaultBrightness:I

    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 407
    :cond_2
    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mDefaultBrightness:I

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 409
    :cond_4
    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public init(Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 385
    invoke-virtual {p0, v2}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v0

    .line 387
    .local v0, "brightness":I
    iget-boolean v1, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mIsSingleValue:Z

    if-eqz v1, :cond_1

    .line 388
    const v1, 0x7f13003f

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 389
    const v1, 0x7f13003e

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mCheckBox:Landroid/widget/CheckBox;

    .line 390
    iget-object v4, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 391
    iget-object v1, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 402
    :goto_1
    invoke-direct {p0, v0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->handleBrightnessUpdate(I)V

    .line 384
    return-void

    :cond_0
    move v1, v3

    .line 390
    goto :goto_0

    .line 393
    :cond_1
    const v1, 0x7f13003d

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 394
    const v1, 0x7f130041

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mSeekBar:Landroid/widget/SeekBar;

    .line 395
    const v1, 0x7f130040

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mValue:Landroid/widget/TextView;

    .line 397
    iget-object v1, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 398
    iget-object v1, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 399
    iget-object v1, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 437
    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->this$0:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;

    invoke-static {v0, p0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->-set0(Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;)Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    .line 438
    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->this$0:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;

    invoke-static {v0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->-wrap1(Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;)V

    .line 439
    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->this$0:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;

    invoke-static {v0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->-wrap2(Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;)V

    .line 436
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 421
    invoke-direct {p0, p2}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->handleBrightnessUpdate(I)V

    .line 420
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->this$0:Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;

    invoke-static {v0, p0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;->-set0(Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness;Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;)Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    .line 425
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 430
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mDefaultBrightness:I

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->setBrightness(I)V

    .line 450
    return-void
.end method

.method public setBrightness(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x0

    .line 443
    iget-boolean v1, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mIsSingleValue:Z

    if-eqz v1, :cond_1

    .line 444
    iget-object v1, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 442
    :goto_0
    return-void

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/cyanogenmod/settings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
