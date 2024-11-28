'use client'
import {useRouter} from "next/navigation";

export default function Home() {
    const router = useRouter()
  return (
      <div className='flex flex-col justify-center items-center w-screen h-screen gap-5'>
          <style>
            {`
              @keyframes wave {
                0%, 100% {
                  transform: translateY(0);
                }
                50% {
                  transform: translateY(-1rem);
                }
              }
            `}
          </style>
        <span className='text-4xl font-bold bg-white z-10 p-5' onClick={() => router.push('/rick')}>
            {"Hello, world!".split('').map((char, index) => (
                <span key={index} className={`inline-block`} style={{"animation": "wave 1s infinite", "animationDelay": `${index * 0.1}s`}}>
                    {char}
                </span>
            ))}
        </span>
      </div>
  );
}
