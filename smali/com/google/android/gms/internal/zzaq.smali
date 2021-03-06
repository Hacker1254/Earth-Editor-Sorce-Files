.class public Lcom/google/android/gms/internal/zzaq;
.super Ljava/lang/Object;


# static fields
.field private static final zzpA:Landroid/os/ConditionVariable;

.field protected static volatile zzpB:Lcom/google/android/gms/internal/zzzk;

.field private static volatile zzpD:Ljava/util/Random;


# instance fields
.field protected volatile zzpC:Ljava/lang/Boolean;

.field private zzpz:Lcom/google/android/gms/internal/zzbd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaq;->zzpA:Landroid/os/ConditionVariable;

    sput-object v1, Lcom/google/android/gms/internal/zzaq;->zzpB:Lcom/google/android/gms/internal/zzzk;

    sput-object v1, Lcom/google/android/gms/internal/zzaq;->zzpD:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaq;->zzpz:Lcom/google/android/gms/internal/zzbd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbd;->zzaI()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaq;->zza(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private static zzR()Ljava/util/Random;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzaq;->zzpD:Ljava/util/Random;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/zzaq;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzaq;->zzpD:Ljava/util/Random;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaq;->zzpD:Ljava/util/Random;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzaq;->zzpD:Ljava/util/Random;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic zzS()Landroid/os/ConditionVariable;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzaq;->zzpA:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaq;)Lcom/google/android/gms/internal/zzbd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaq;->zzpz:Lcom/google/android/gms/internal/zzbd;

    return-object v0
.end method

.method private zza(Ljava/util/concurrent/Executor;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaq$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaq$1;-><init>(Lcom/google/android/gms/internal/zzaq;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public zzQ()I
    .locals 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzaq;->zzR()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/internal/zzaq;->zzR()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    goto :goto_0
.end method

.method public zza(IIJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzaq;->zzpA:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaq;->zzpC:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzaq;->zzpB:Lcom/google/android/gms/internal/zzzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaq;->zzpz:Lcom/google/android/gms/internal/zzbd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbd;->zzaO()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzaf$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaf$zza;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaq;->zzpz:Lcom/google/android/gms/internal/zzbd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzaf$zza;->zzaS:Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzaf$zza;->zzaT:Ljava/lang/Long;

    sget-object v1, Lcom/google/android/gms/internal/zzaq;->zzpB:Lcom/google/android/gms/internal/zzzk;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbxt;->zzf(Lcom/google/android/gms/internal/zzbxt;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzzk;->zzm([B)Lcom/google/android/gms/internal/zzzk$zza;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzzk$zza;->zzcr(I)Lcom/google/android/gms/internal/zzzk$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzzk$zza;->zzcq(I)Lcom/google/android/gms/internal/zzzk$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaq;->zzpz:Lcom/google/android/gms/internal/zzbd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbd;->zzaM()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzzk$zza;->zze(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
