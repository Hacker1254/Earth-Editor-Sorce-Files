.class Lcom/google/android/gms/internal/zzfk$zza;
.super Lcom/google/android/gms/internal/zzeq$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzfk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzAC:Lcom/google/android/gms/internal/zzfk;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzfk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfk$zza;->zzAC:Lcom/google/android/gms/internal/zzfk;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeq$zza;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzfk;Lcom/google/android/gms/internal/zzfk$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzfk$zza;-><init>(Lcom/google/android/gms/internal/zzfk;)V

    return-void
.end method


# virtual methods
.method public getMediationAdapterClassName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public zzf(Lcom/google/android/gms/internal/zzec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqf;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzqe;->zzYP:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzfk$zza$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzfk$zza$1;-><init>(Lcom/google/android/gms/internal/zzfk$zza;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
