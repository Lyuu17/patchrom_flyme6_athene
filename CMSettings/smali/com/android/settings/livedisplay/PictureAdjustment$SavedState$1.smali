.class final Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment$SavedState$1;
.super Ljava/lang/Object;
.source "PictureAdjustment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment$SavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 199
    new-instance v0, Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment$SavedState;

    invoke-direct {v0, p1}, Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 203
    new-array v0, p1, [Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment$SavedState$1;->newArray(I)[Lcom/cyanogenmod/settings/livedisplay/PictureAdjustment$SavedState;

    move-result-object v0

    return-object v0
.end method
