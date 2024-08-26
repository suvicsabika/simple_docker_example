import os
import time


def important_log_generator(content: str, step_in_seconds: int) -> None:
    """
    An important log generator function, that writes to the STDOUT.
    
    Args:
        content (str):         The content to be written.
        step_in_seconds (int): The interval in seconds between the two writes.
    """
    try:
        while True:
            # This is a way too to write to the STDOUT...
            os.system(f"echo \"Python script: {content}\"")
            time.sleep(step_in_seconds)
    except KeyboardInterrupt:
        print("echo \"Python script: Log generating stopped.\"")
        
        
def main() -> None:    
    """
    Main function, that starts the log generating.
    """
    important_log_generator("Example data", 30)


if __name__ == "__main__":
    main()