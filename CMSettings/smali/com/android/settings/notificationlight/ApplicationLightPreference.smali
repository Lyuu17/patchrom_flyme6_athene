.class public Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;
.super Landroid/preference/DialogPreference;
.source "ApplicationLightPreference.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mColorValue:I

.field private mLightColorView:Landroid/widget/ImageView;

.field private mOffValue:I

.field private mOffValueView:Landroid/widget/TextView;

.field private mOnOffChangeable:Z

.field private mOnValue:I

.field private mOnValueView:Landroid/widget/TextView;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method static synthetic -set0(Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;I)I
    .locals 0

    iput p1, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    return p1
.end method

.method static synthetic -set1(Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;I)I
    .locals 0

    iput p1, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    return p1
.end method

.method static synthetic -set2(Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;I)I
    .locals 0

    iput p1, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "AppLightPreference"

    sput-object v0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->TAG:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I
    .param p3, "onValue"    # I
    .param p4, "offValue"    # I

    .prologue
    .line 74
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 76
    .local v0, "nm":Landroid/app/NotificationManager;
    iput p2, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    .line 77
    iput p3, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    .line 78
    iput p4, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    .line 79
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->deviceLightsCan(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    .line 80
    invoke-direct {p0}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->init()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I
    .param p3, "onValue"    # I
    .param p4, "offValue"    # I
    .param p5, "onOffChangeable"    # Z

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    iput p2, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    .line 92
    iput p3, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    .line 93
    iput p4, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    .line 94
    iput-boolean p5, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    .line 95
    invoke-direct {p0}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->init()V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v2, 0x3e8

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 60
    .local v0, "nm":Landroid/app/NotificationManager;
    const v1, 0xffffff

    iput v1, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    .line 61
    iput v2, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    .line 62
    iput v2, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    .line 63
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->deviceLightsCan(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    .line 64
    invoke-direct {p0}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->init()V

    .line 57
    return-void
.end method

.method private static createOvalShape(II)Landroid/graphics/drawable/ShapeDrawable;
    .locals 2
    .param p0, "size"    # I
    .param p1, "color"    # I

    .prologue
    .line 257
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 258
    .local v0, "shape":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 259
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 260
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 261
    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 99
    const v0, 0x7f0400ae

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->setLayoutResource(I)V

    .line 100
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    .line 98
    return-void
.end method

.method private mapLengthValue(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 5
    .param p1, "time"    # Ljava/lang/Integer;

    .prologue
    .line 265
    iget-boolean v3, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    if-nez v3, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0115

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 268
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_1

    .line 269
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0111

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 272
    :cond_1
    iget-object v3, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0a0080

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "timeNames":[Ljava/lang/String;
    iget-object v3, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0a0081

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "timeValues":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 276
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 277
    aget-object v3, v1, v0

    return-object v3

    .line 275
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :cond_3
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0112

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private mapSpeedValue(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 5
    .param p1, "time"    # Ljava/lang/Integer;

    .prologue
    .line 285
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0111

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 289
    :cond_0
    iget-object v3, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0a0082

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "timeNames":[Ljava/lang/String;
    iget-object v3, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0a0083

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, "timeValues":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 293
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 294
    aget-object v3, v1, v0

    return-object v3

    .line 292
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_2
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0112

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private updatePreferenceViews()V
    .locals 6

    .prologue
    const v5, 0xf0f0f0

    const/4 v4, 0x1

    .line 140
    iget-object v2, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b0036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 142
    .local v1, "size":I
    iget-object v2, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mLightColorView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mLightColorView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 145
    iget v2, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_3

    .line 146
    iget v2, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    const v3, 0x101010

    sub-int v0, v2, v3

    .line 147
    .local v0, "imageColor":I
    :goto_0
    iget-object v2, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mLightColorView:Landroid/widget/ImageView;

    .line 148
    const/high16 v3, -0x1000000

    add-int/2addr v3, v0

    .line 147
    invoke-static {v1, v3}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->createOvalShape(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    .end local v0    # "imageColor":I
    :cond_0
    iget-object v2, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mOnValueView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 151
    iget-object v2, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mOnValueView:Landroid/widget/TextView;

    iget v3, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mapLengthValue(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_1
    iget-object v2, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 154
    iget v2, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    if-eq v2, v4, :cond_4

    iget-boolean v2, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    if-eqz v2, :cond_4

    .line 157
    iget-object v2, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    :goto_1
    iget-object v2, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    iget v3, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mapSpeedValue(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :cond_2
    return-void

    .line 146
    :cond_3
    iget v0, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    .restart local v0    # "imageColor":I
    goto :goto_0

    .line 155
    .end local v0    # "imageColor":I
    :cond_4
    iget-object v2, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected createDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 172
    new-instance v0, Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 173
    iget v2, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    const/high16 v3, -0x1000000

    add-int/2addr v2, v3

    iget v3, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    iget v4, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    iget-boolean v5, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    .line 172
    invoke-direct/range {v0 .. v5}, Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;-><init>(Landroid/content/Context;IIIZ)V

    .line 174
    .local v0, "d":Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;->setAlphaSliderVisible(Z)V

    .line 176
    iget-object v1, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c08cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 177
    new-instance v2, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference$1;

    invoke-direct {v2, p0, v0}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference$1;-><init>(Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;)V

    .line 176
    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 187
    iget-object v1, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c04c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 188
    new-instance v2, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference$2;

    invoke-direct {v2, p0}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference$2;-><init>(Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;)V

    .line 187
    const/4 v3, -0x2

    invoke-virtual {v0, v3, v1, v2}, Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 194
    return-object v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    return v0
.end method

.method public getOffValue()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    return v0
.end method

.method public getOnValue()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x8

    .line 119
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    .line 121
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/app/NotificationManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 123
    .local v0, "nm":Landroid/app/NotificationManager;
    const v2, 0x7f130176

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mLightColorView:Landroid/widget/ImageView;

    .line 124
    const v2, 0x7f130174

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mOnValueView:Landroid/widget/TextView;

    .line 125
    const v2, 0x7f130175

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    .line 129
    const v2, 0x1020010

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 130
    .local v1, "tView":Landroid/widget/TextView;
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->deviceLightsCan(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mLightColorView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    .line 118
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;

    .line 105
    .local v0, "d":Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;->onStart()V

    .line 103
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;

    .line 112
    .local v0, "d":Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;->onStop()V

    .line 110
    :cond_0
    return-void
.end method

.method public setAllValues(III)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "onValue"    # I
    .param p3, "offValue"    # I

    .prologue
    .line 229
    iput p1, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    .line 230
    iput p2, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    .line 231
    iput p3, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    .line 232
    invoke-direct {p0}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    .line 228
    return-void
.end method

.method public setAllValues(IIIZ)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "onValue"    # I
    .param p3, "offValue"    # I
    .param p4, "onOffChangeable"    # Z

    .prologue
    .line 236
    iput p1, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mColorValue:I

    .line 237
    iput p2, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mOnValue:I

    .line 238
    iput p3, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mOffValue:I

    .line 239
    iput-boolean p4, p0, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    .line 240
    invoke-direct {p0}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    .line 235
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 167
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/notificationlight/ApplicationLightPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;

    .line 164
    .local v0, "d":Lcom/cyanogenmod/settings/notificationlight/LightSettingsDialog;
    return-void
.end method
