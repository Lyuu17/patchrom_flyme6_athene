.class final Lcom/cyanogenmod/settings/cyanogenmod/SpamList$NotificationInfo;
.super Lcom/cyanogenmod/settings/cyanogenmod/SpamList$ItemInfo;
.source "SpamList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/cyanogenmod/SpamList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NotificationInfo"
.end annotation


# instance fields
.field appLabel:Ljava/lang/CharSequence;

.field count:I

.field date:J

.field messageText:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cyanogenmod/settings/cyanogenmod/SpamList$ItemInfo;-><init>(Lcom/cyanogenmod/settings/cyanogenmod/SpamList$ItemInfo;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyanogenmod/settings/cyanogenmod/SpamList$NotificationInfo;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/cyanogenmod/settings/cyanogenmod/SpamList$NotificationInfo;-><init>()V

    return-void
.end method
